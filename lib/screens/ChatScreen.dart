import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firebase = FirebaseAuth.instance;

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> messages = [];
  final TextEditingController _controller = TextEditingController();

  var profileData = {};

  Future<void> _sendMessage() async {
    final user = _firebase.currentUser!;

    var userData = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get();
    profileData = userData.data()!;

    var prompt =
        "You are a helpful dietitian assistant. Providing real and personalized assitance for the user query by considering their data. User's Data: $profileData. Answer only in the context of the user's data. and what they have asked for. No extra texts by yourself. Keep Concise and clear outputs.";

    if (_controller.text.isEmpty) return;
    await dotenv.load();
    final String apiKey = dotenv.env['GROQ_API_KEY'] ?? '';
    final String apiUrl = "https://api.groq.com/openai/v1/chat/completions";

    setState(() {
      messages.add({"sender": "user", "text": _controller.text});
      messages.add({"sender": "bot", "text": "Thinking..."}); // Placeholder
    });

    String userMessage = _controller.text;
    _controller.clear();

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "model": "llama-3.1-8b-instant",
          "messages": [
            {
              "role": "system",
              "content": prompt,
            },
            {"role": "user", "content": userMessage}
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        String botReply =
            data["choices"][0]["message"]["content"] ?? "No response";

        setState(() {
          messages.removeLast();
          messages.add({"sender": "bot", "text": botReply});
        });
      } else {
        setState(() {
          messages.removeLast();
          messages
              .add({"sender": "bot", "text": "Error: ${response.statusCode}"});
        });
      }
    } catch (e) {
      setState(() {
        messages.removeLast();
        messages
            .add({"sender": "bot", "text": "Failed to connect. Try again."});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AI Dietitian",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              "Online",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 65, 231, 73),
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Add menu functionality here if needed
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                bool isUser = message["sender"] == "user";
                return Row(
                  mainAxisAlignment:
                      isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!isUser)
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/bot.gif"),
                        radius: 20,
                      ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(14),
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                          color: isUser
                              ? const Color.fromARGB(255, 79, 229, 84)
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          message["text"]!,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    if (isUser)
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        radius: 20,
                      ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      hintStyle: TextStyle(color: Colors.black54),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 119, 221, 124),
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: _sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

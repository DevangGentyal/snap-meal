import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<String?> groqRequest(String userMessage, String systemPrompt) async {
  print("GROQ API Called");
  await dotenv.load();
  final String? apiKey = dotenv.env['GROQ_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    print("API Key not found!");
    return null;
  }

  final Uri url = Uri.parse('https://api.groq.com/openai/v1/chat/completions');

  final Map<String, dynamic> requestBody = {
    "model": "llama-3.1-8b-instant",
    "messages": [
      {"role": "system", "content": systemPrompt},
      {"role": "user", "content": userMessage}
    ],
    "max_tokens": 1024 ,  // (Increase if needed, but stay within model limits)

    "temperature": 0.7
  };

  try {
    final http.Response response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer $apiKey",
        "Content-Type": "application/json"
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      return responseBody["choices"][0]["message"]["content"];
    } else {
      print("Error: ${response.statusCode}, ${response.body}");
      return null;
    }
  } catch (e) {
    print("Exception: $e");
    return null;
  }
}

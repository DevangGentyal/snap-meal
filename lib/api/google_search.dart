import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<Map<String,String>> googleImageSearch(String searchQuery) async {
  print("Google Image Search Started");
  await dotenv.load();
  
  final String? apiKey = dotenv.env['GOOGLE_API_KEY'];
  final String? searchEngineId = dotenv.env['SEARCH_ENGINE_ID'];

  if (apiKey == null || apiKey.isEmpty || searchEngineId == null || searchEngineId.isEmpty) {
    print("API Key or Search Engine ID is missing!");
  }

  try {
    final String url =
        "https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$searchEngineId&q=${Uri.encodeComponent(searchQuery)}&searchType=image";

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      if (data["items"] != null && data["items"].isNotEmpty) {
        return {"success":data["items"][0]["link"] ?? "No image found"};
      } else {
        return {"error":"No image found"};
      }
    } else {
      return {"error":"error"};
    }
  } catch (e) {
    return {"error":"error"};
  }
}

import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'dart:convert';

class GeminiService {
  static Future<Map<String, dynamic>> analyzeMealImage(File imageFile) async {
    const String apiKey =
        "AIzaSyAWGDVC3UhLr6ankGnvrv7ACkrnlD6sb1o"; // Replace with your actual API key

    if (apiKey.isEmpty) {
      throw Exception('No Gemini API key found');
    }

    final model = GenerativeModel(
      model: 'gemini-2.0-flash',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 0.4, // Lower temperature for more precise analysis
        topK: 32,
        topP: 0.8,
        maxOutputTokens: 2048,
      ),
    );

    final imageBytes = await imageFile.readAsBytes();
    final content = [
      Content.multi([TextPart(_prompt), DataPart('image/jpeg', imageBytes)])
    ];

    try {
      final response = await model.generateContent(content);
      if (response.text == null || response.text!.isEmpty) {
        throw Exception('Empty response from Gemini API');
      }

      return _parseGeminiResponse(response.text!);
    } catch (e) {
      throw Exception('Meal analysis failed: $e');
    }
  }

  static const String _prompt = """
Please analyze this meal's nutritional content from the image and provide a precise response in this JSON format:
{
  "nutritionalInfo": {
    "totalCalories": number,
    "protein": number,
    "carbohydrates": number,
    "fat": number,
    "fiber": number
  },
  "analysis": {
    "healthRating": "string",
    "healthyAlternatives": ["string", "string"]
  }
}

Keep in mind:
1. Provide nutritional values as numbers only
2. Health rating must be exactly one of: ["Excellent", "Good", "Average", "Poor"]
3. Suggest 2 similar but healthier alternatives
4. Focus on numerical accuracy for nutritional values
5. If no food found then put all values to 0


Very very important:
If no food found then put all values to 0
""";

  static Map<String, dynamic> _parseGeminiResponse(String responseText) {
    try {
      // Find and extract JSON from the response
      final jsonStart = responseText.indexOf('{');
      final jsonEnd = responseText.lastIndexOf('}');

      if (jsonStart >= 0 && jsonEnd > jsonStart) {
        final jsonStr = responseText.substring(jsonStart, jsonEnd + 1);
        final Map<String, dynamic> parsedJson = json.decode(jsonStr);

        return {
          'totalCalories':
              _convertToInt(parsedJson['nutritionalInfo']['totalCalories']),
          'protein': _convertToInt(parsedJson['nutritionalInfo']['protein']),
          'carbs':
              _convertToInt(parsedJson['nutritionalInfo']['carbohydrates']),
          'fat': _convertToInt(parsedJson['nutritionalInfo']['fat']),
          'fiber': _convertToInt(parsedJson['nutritionalInfo']['fiber']),
          'calorieRangeStatus':
              _validateHealthRating(parsedJson['analysis']['healthRating']),
          'suggestions': _convertToStringList(
              parsedJson['analysis']['healthyAlternatives']),
          'rawAnalysis': responseText
        };
      }

      return _fallbackParsing(responseText);
    } catch (e) {
      return _fallbackParsing(responseText);
    }
  }

  static int _convertToInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.round();
    if (value is String) {
      try {
        return double.parse(value.replaceAll(RegExp(r'[^\d.]'), '')).round();
      } catch (e) {
        return 0;
      }
    }
    return 0;
  }

  static String _validateHealthRating(dynamic value) {
    final validRatings = ['Excellent', 'Good', 'Average', 'Poor'];
    final rating = value?.toString() ?? '';
    return validRatings.contains(rating) ? rating : 'Average';
  }

  static List<String> _convertToStringList(dynamic value) {
    if (value == null) return ['Grilled Chicken Salad', 'Quinoa Bowl'];
    if (value is List) {
      return value.map((e) => e.toString()).take(2).toList();
    }
    if (value is String) {
      return [value, 'Quinoa Bowl'];
    }
    return ['Grilled Chicken Salad', 'Quinoa Bowl'];
  }

  static Map<String, dynamic> _fallbackParsing(String text) {
    return {
      'totalCalories': _extractNumericValue(text, 'Calories', 0),
      'protein': _extractNumericValue(text, 'Protein', 0),
      'carbs': _extractNumericValue(text, 'Carbohydrates', 0),
      'fat': _extractNumericValue(text, 'Fat', 0),
      'fiber': _extractNumericValue(text, 'Fiber', 0),
      'calorieRangeStatus': _extractHealthRating(text),
      'suggestions': _extractSuggestions(text),
      'rawAnalysis': text
    };
  }

  static int _extractNumericValue(
      String text, String nutrient, int defaultValue) {
    final regex = RegExp(
        r'(\d+(?:\.\d+)?)\s*(?:g|grams)?\s*(?:of\s+)?' + nutrient,
        caseSensitive: false);
    final match = regex.firstMatch(text);
    if (match != null) {
      try {
        return double.parse(match.group(1)!.replaceAll(RegExp(r'[^\d.]'), ''))
            .round();
      } catch (e) {
        return defaultValue;
      }
    }
    return defaultValue;
  }

  static String _extractHealthRating(String text) {
    final ratings = ['Excellent', 'Good', 'Average', 'Poor'];
    for (final rating in ratings) {
      if (text.toLowerCase().contains(rating.toLowerCase())) {
        return rating;
      }
    }
    return 'Average';
  }

  static List<String> _extractSuggestions(String text) {
    final suggestions = <String>[];
    final suggestionRegex = RegExp(
        r'(?:alternative|suggestion|recommend)(?:s)?:?\s*([\w\s,]+)(?:\.|$)',
        caseSensitive: false);

    final matches = suggestionRegex.allMatches(text);
    for (final match in matches) {
      if (match.group(1) != null) {
        final items = match
            .group(1)!
            .split(',')
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList();
        suggestions.addAll(items);
      }
    }

    return suggestions.take(2).toList();
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:snap_meal/api/google_search.dart';
import 'package:snap_meal/api/groq.dart';
import 'package:snap_meal/screens/MealDetailPage.dart';

class MealPlanningPage extends StatefulWidget {
  const MealPlanningPage({super.key});
  @override
  MealPlanningPageState createState() => MealPlanningPageState();
}

class MealPlanningPageState extends State<MealPlanningPage> {
  List<Map> meals = [
    {
      // Dummy Data
      "meal_title": "Breakfast",
      "meal_name": "Avocado Toast with Eggs",
      "timing": "08:00 AM",
      "total_calories": 400,
      "macronutrients": {"protein": 20, "carbs": 40, "fats": 15},
      "google_search": "Avocado Toast with Eggs recipe",
      "image_url":
          "https://design4users.com/wp-content/uploads/2023/03/food-illustration-by-helen-lee.jpg",
      "isConsumed": false,
    },
    {
      "meal_title": "Lunch",
      "meal_name": "Grilled Chicken Salad",
      "timing": "01:00 PM",
      "total_calories": 550,
      "macronutrients": {"protein": 45, "carbs": 30, "fats": 10},
      "google_search": "Grilled Chicken Salad recipe",
      "image_url":
          "https://design4users.com/wp-content/uploads/2023/03/food-illustration-by-helen-lee.jpg",
      "isConsumed": false,
    },
    {
      "meal_title": "Dinner",
      "meal_name": "Quinoa & Vegetable Stir Fry",
      "timing": "07:30 PM",
      "total_calories": 600,
      "macronutrients": {"protein": 35, "carbs": 50, "fats": 12},
      "google_search": "Quinoa & Vegetable Stir Fry recipe",
      "image_url":
          "https://design4users.com/wp-content/uploads/2023/03/food-illustration-by-helen-lee.jpg",
      "isConsumed": false,
    }
  ];
  bool isGenerating = false;

  // Define meal categories based on the number of meals
  Map<int, List<String>> mealTemplates = {
    3: ["Breakfast", "Lunch", "Dinner"],
    4: ["Breakfast", "Morning Snack", "Lunch", "Dinner"],
    5: ["Breakfast", "Morning Snack", "Lunch", "Evening Snack", "Dinner"]
  };

  var userData = {
    "age": 30,
    "gender": "Male",
    "height": 165,
    "weight": 60,
    "country": "India",
    "city": "Pune",
    "body_fat_percentage": 22,
    "goal": "Weight Loss",
    "target_calories": 1800,
    "macronutrient_ratio": {"protein": 40, "carbs": 40, "fats": 20},
    "exercise_level": "Moderate",
    "diet_type": "Normal",
    "allergies": ["Dairy"],
    "food_preferences": ["Vegetarian"],
    "cultural_restrictions": ["No Beef"],
  };

  Future<void> generateMealPlan() async {
    setState(() {
      isGenerating = true;
      meals.clear();
    });

    int numberOfMeals = 5;
    List<String> selectedMeals =
        mealTemplates[numberOfMeals] ?? mealTemplates[3] ?? [];

    for (int i = 0; i < selectedMeals.length; i++) {
      String mealType = selectedMeals[i];

      String prompt = '''
        Generate a $mealType meal based on the user attributes.
        Ensure that:
        - The meal follows the user's diet type, allergies, and food preferences.
        - The meal contributes to the user's target calorie intake of ${userData["target_calories"]} kcal/day.
        - Timing is spread logically based on their exercise level and daily routine.
        - The response must be a VALID JSON string with no extra text, new lines, or special characters outside JSON.

        Strictly format the output as:
        {
          "meal_title": "$mealType",
          "meal_name": "Example Meal Name",
          "timing": "HH:MM AM/PM",
          "total_calories": 0,
          "macronutrients": { "protein": 0, "carbs": 0, "fats": 0 },
          "google_search": "Example Meal Name recipe",
          "recipe": "Step 1) Do this. Step 2) Do that. Step 3) Serve hot."
        }

        Rules:
        - Use **only** double quotes (`"`) for keys and string values.
        - Do **not** add any text outside the JSON object.
        - Ensure numbers are **not** wrapped in quotes.
        - Escape any special characters properly.
        - Do **not** include newlines or extra spaces in the response.
      ''';

      String? response =
          await groqRequest("User Attributes: $userData", prompt);

      if (response != null) {
        try {
          try {
            // print(response);
            Map<String, dynamic> meal = jsonDecode(response);
            var result = await googleImageSearch(meal["meal_name"]);
            var imageUrl;
            if (result["error"] == "error") {
              imageUrl =
                  "https://design4users.com/wp-content/uploads/2023/03/food-illustration-by-helen-lee.jpg";
            } else {
              imageUrl = result["sucess"];
            }
            meal["image_url"] = imageUrl;
            meal["is_consumed"] = false;
            print("MealName: " +
                meal['meal_name'] +
                " ImageUrl: " +
                meal['image_url']);

            meals.add(meal);
          } catch (e) {
            print("JSON Parsing Error: $e");
          }
        } catch (e) {
          print("Error parsing meal JSON: $e");
        }
      }
    }

    setState(() {
      isGenerating = false;
    });

    // print(meals);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Existing AppBar and other widgets remain the same
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  "Today's Meals",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 16),

                                // Dynamic meal cards
                                for (int i = 0; i < meals.length; i++)
                                  Column(
                                    children: [
                                      _buildMealCard(
                                        mealType:
                                            meals[i]["meal_title"].toString(),
                                        time: meals[i]["timing"]
                                            .toString(), // You can parse from JSON
                                        mealName: meals[i]["meal_name"]
                                            .toString(), // Parse from JSON
                                        calories: meals[i]["total_calories"]
                                            .toString(), // Parse from JSON
                                        protein: meals[i]["macronutrients"]
                                                ["protein"]
                                            .toString(), // Parse from JSON
                                        imageUrl:
                                            meals[i]["image_url"].toString(),
                                        isConsumed: false,
                                        onConsumed: () {
                                          setState(() {});
                                        },
                                      ),
                                      const SizedBox(height: 16),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Bottom Section with Regenerate Button
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          border: Border(
                            top: BorderSide(color: Color(0xFFE5E7EB)),
                          ),
                        ),
                        child: Column(
                          children: [
                            // Regenerate Button with Highlight
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: isGenerating
                                    ? const Color(0xFF2563EB).withOpacity(0.2)
                                    : Colors.transparent,
                                border:
                                    Border.all(color: const Color(0xFFD1D5DB)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextButton.icon(
                                icon: const Icon(Icons.refresh, size: 18),
                                label: Text(
                                  isGenerating ? "Generating..." : "Regenerate",
                                  style: TextStyle(
                                    color: isGenerating
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                onPressed:
                                    isGenerating ? null : generateMealPlan,
                                style: TextButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            // Loading Overlay
            if (isGenerating)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealCard({
    required String mealType,
    required String time,
    required String mealName,
    required String calories,
    required String protein,
    required String imageUrl,
    bool isConsumed = false,
    VoidCallback? onConsumed,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE5E7EB)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Meal Type & Time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mealType,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Meal Image
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MealDetailPage()),
                );
                // Perform action (e.g., open image in full screen)
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Meal Name
            Text(
              mealName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            // Calories & Protein Row
            Row(
              children: [
                // Calories with Fire Icon
                const Icon(Icons.local_fire_department,
                    color: Colors.grey, size: 20),
                const SizedBox(width: 4),
                Text(
                  "$calories kcal",
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(width: 16),

                // Protein with Dumbbell Icon
                const Icon(Icons.fitness_center, color: Colors.grey, size: 20),
                const SizedBox(width: 4),
                Text(
                  "$protein protein",
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Consumed Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onConsumed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isConsumed
                      ? const Color(0xFF10B981) // Green if consumed
                      : const Color(0xFF2563EB), // Blue if not
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  isConsumed ? "Consumed" : "Mark as Consumed",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snap_meal/screens/HomePage.dart';
import 'package:snap_meal/api/google_search.dart';
import 'package:snap_meal/api/groq.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  _CompleteProfilePageState createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final _formKey = GlobalKey<FormState>();

  // Form controllers
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _goalsController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _religiousConcernsController =
      TextEditingController();

  String? _selectedGender;
  String? _selectedDietaryPreference;

  final List<String> _genderOptions = ['Male', 'Female', 'Other'];
  final List<String> _dietaryOptions = [
    'No Restrictions',
    'Vegetarian',
    'Vegan',
    'Pescatarian',
    'Gluten-Free',
    'Keto'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's personalize your experience!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Fill out your details to let us know about you!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 24),
              // Gender and Age Row
              Row(
                children: [
                  Expanded(
                    child: _buildDropdownField(
                      value: _selectedGender,
                      hint: 'Select gender',
                      items: _genderOptions,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: _buildTextFormField(
                      controller: _ageController,
                      labelText: 'Age',
                      hintText: 'Years',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter age';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              // Weight and Height Row
              Row(
                children: [
                  Expanded(
                    child: _buildTextFormField(
                      controller: _weightController,
                      labelText: 'Weight',
                      hintText: 'kg',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter weight';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: _buildTextFormField(
                      controller: _heightController,
                      labelText: 'Height',
                      hintText: 'cm',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter height';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              // Fitness Goals
              _buildTextFormField(
                maxline: 2,
                controller: _goalsController,
                labelText: 'Fitness Goal',
                hintText: 'Enter your Goals',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your fitness goals';
                  }
                  return null;
                },
              ),

              // Dietary Restrictions
              _buildDropdownField(
                value: _selectedDietaryPreference,
                hint: 'Select dietary preference',
                items: _dietaryOptions,
                onChanged: (value) {
                  setState(() {
                    _selectedDietaryPreference = value;
                  });
                },
              ),

              // Allergies
              _buildTextFormField(
                  controller: _allergiesController,
                  labelText: 'Allergies',
                  hintText: 'List any food allergies or intolerances',
                  maxline: 3),

              // Religious Concerns
              _buildTextFormField(
                  controller: _religiousConcernsController,
                  labelText: 'Religious Concerns',
                  hintText: 'List any religious dietary requirements',
                  maxline: 3),

              SizedBox(height: 24),

              // Complete Profile Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isLoading ? null : _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: isLoading
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                            strokeWidth: 2,
                          ),
                        )
                      : Text(
                          'Complete Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    maxline = 1,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        maxLines: maxline,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        ),
        keyboardType: keyboardType,
        validator: validator,
      ),
    );
  }

  Widget _buildDropdownField({
    required String? value,
    required String hint,
    required List<String> items,
    required void Function(String?)? onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        ),
        items: items.map((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }

  bool isLoading = false;
  void _submitForm() async {
    List<Map> meals = [];

    if (_formKey.currentState!.validate()) {
      setState(() => isLoading = true);

      try {
        // Define meal categories based on the number of meals
        Map<int, List<String>> mealTemplates = {
          3: ["Breakfast", "Lunch", "Dinner"],
          4: ["Breakfast", "Morning Snack", "Lunch", "Dinner"],
          5: ["Breakfast", "Morning Snack", "Lunch", "Evening Snack", "Dinner"]
        };

        // Collect form data
        var profileData = {
          'gender': _selectedGender,
          'age': _ageController.text,
          'weight': _weightController.text,
          'height': _heightController.text,
          'fitnessGoals': _goalsController.text,
          'dietaryPreference': _selectedDietaryPreference,
          'allergies': _allergiesController.text,
          'religiousConcerns': _religiousConcernsController.text,
        };

        String prompt =
            '''Based on the user's attributes or data. be a nutritionist and give me the exact number of meals the user should have in a day. The output should be just a single number. No other text or explanation.''';

        String? response =
            await groqRequest("User Attributes: $profileData", prompt);

        if (response != null) {
          int numberOfMeals = int.parse(response);
          print("Number of Meals: $numberOfMeals");
          profileData['no_of_meals'] = numberOfMeals.toString();

          // Make Meals
          List<String> selectedMeals =
              mealTemplates[numberOfMeals] ?? mealTemplates[3] ?? [];

          for (int i = 0; i < selectedMeals.length; i++) {
            String mealType = selectedMeals[i];

            String prompt = '''
               Generate a $mealType meal based on the user attributes.
              Ensure that:
              - The meal follows the user's diet type, allergies, and food preferences.
              - The meal contributes to the user's target calorie intake of ${profileData["target_calories"]} kcal/day.
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
                await groqRequest("User Attributes: $profileData", prompt);

            if (response != null) {
              try {
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
            }
            if (meals.isNotEmpty) {
              try {
                final userId = FirebaseAuth.instance.currentUser!.uid;
                print("Final Meals Array: $meals");

                // Update profile data with meals
                Map<String, dynamic> updatedProfile =
                    Map<String, dynamic>.from(profileData);
                updatedProfile['meals'] = meals;

                // Update Firestore
                await FirebaseFirestore.instance
                    .collection("users")
                    .doc(userId)
                    .update(updatedProfile);

                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Profile completed successfully!')),
                );

                // Navigate to HomePage and remove all previous routes
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false,
                );
              } catch (e) {
                print("Firestore Update Error: $e");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Error saving profile. Please try again.')),
                );
              }
            } else {
              throw Exception("No meals were generated successfully");
            }
          }
        }
      } catch (e) {
        print("Error in form submission: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Error completing profile. Please try again.')),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snap_meal/screens/HomePage.dart';

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
    if (_formKey.currentState!.validate()) {
      setState(() => isLoading = true);
      // Collect form data
      final profileData = {
        'gender': _selectedGender,
        'age': _ageController.text,
        'weight': _weightController.text,
        'height': _heightController.text,
        'fitnessGoals': _goalsController.text,
        'dietaryPreference': _selectedDietaryPreference,
        'allergies': _allergiesController.text,
      };

      final userId = FirebaseAuth.instance.currentUser!.uid;

      await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .update(profileData);

      // TODO: Implement profile submission logic
      print('Profile Data: $profileData');

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile completed successfully!')),
      );

      // Navigate to HomePage and remove all previous routes
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage()),
        (Route<dynamic> route) => false,
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    // Dispose controllers
    _ageController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    _goalsController.dispose();
    _allergiesController.dispose();
    super.dispose();
  }
}

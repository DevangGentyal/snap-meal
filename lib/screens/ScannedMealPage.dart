import 'package:flutter/material.dart';
import 'package:snap_meal/screens/HomePage.dart';
import 'package:snap_meal/api/gemini.dart';
import 'dart:io';

class ScannedMealPage extends StatefulWidget {
  final File imageFile;

  const ScannedMealPage({
    Key? key,
    required this.imageFile,
  }) : super(key: key);

  @override
  ScannedMealPageState createState() => ScannedMealPageState();
}

class ScannedMealPageState extends State<ScannedMealPage> {
  bool _isAnalyzing = true;
  Map<String, dynamic>? _mealAnalysis;
  String? _error;

  @override
  void initState() {
    super.initState();
    _analyzeMeal();
  }

  Future<void> _analyzeMeal() async {
    try {
      final analysisResult =
          await GeminiService.analyzeMealImage(widget.imageFile);
      setState(() {
        _mealAnalysis = analysisResult;
        _isAnalyzing = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isAnalyzing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isTablet = screenSize.width > 600;
    final horizontalPadding = screenSize.width * 0.05;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: const Text(
          'Meal Analysis',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: _isAnalyzing
            ? _buildLoadingState()
            : _error != null
                ? _buildErrorState()
                : _buildAnalysisContent(
                    screenSize, isTablet, horizontalPadding),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          SizedBox(height: 20),
          Text(
            'Analyzing your meal...',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'Analysis Failed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              _error ?? 'An unknown error occurred',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isAnalyzing = true;
                  _error = null;
                });
                _analyzeMeal();
              },
              child: Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalysisContent(
      Size screenSize, bool isTablet, double horizontalPadding) {
    if (_mealAnalysis == null) return Container();

    final int calories = _mealAnalysis!['totalCalories'] ?? 0;
    final int protein = _mealAnalysis!['protein'] ?? 0;
    final int carbs = _mealAnalysis!['carbs'] ?? 0;
    final int fat = _mealAnalysis!['fat'] ?? 0;
    final String calorieStatus =
        _mealAnalysis!['calorieRangeStatus'] ?? "Unknown";
    final List<String> suggestions = _mealAnalysis!['suggestions'] ?? [];

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Captured Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(
                        widget.imageFile,
                        height: isTablet ? 400 : screenSize.width * 0.6,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 24),

                    // Nutrition Info Cards
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        _buildInfoCard("Calories", "$calories cal",
                            Color.fromARGB(255, 255, 174, 174)),
                        _buildInfoCard(
                            "Protein", "$protein g", Color(0xFFF0FDF4)),
                        _buildInfoCard("Carbs", "$carbs g", Color(0xFFFEFCE8)),
                        _buildInfoCard("Fat", "$fat g",
                            Color.fromARGB(255, 248, 245, 255)),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Calorie Status
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: calorieStatus == "Good"
                            ? Color(0xFFDCFCE7)
                            : calorieStatus == "Average"
                                ? Color(0xFFFFF5E1)
                                : Color(0xFFFEE2E2),
                      ),
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: calorieStatus == "Good"
                                ? Colors.green
                                : calorieStatus == "Average"
                                    ? Colors.orange
                                    : Colors.red,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              "Calorie Status: $calorieStatus",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Similar Options
                    if (suggestions.isNotEmpty)
                      _buildSimilarOptions(context, suggestions),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Color(0xFF4B5563), fontSize: 14),
          ),
          SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimilarOptions(BuildContext context, List<String> suggestions) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      margin: EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Similar Healthy Options",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                for (int i = 0; i < suggestions.length; i++)
                  _buildSimilarOptionCard(
                    title:
                        i == 0 ? "Grilled Salmon Bowl" : "Quinoa Buddha Bowl",
                    calories: i == 0 ? "580" : "520",
                    type: i == 0 ? "High Protein" : "Plant Based",
                    imageUrl: i == 0
                        ? "https://source.unsplash.com/featured/?grilled,salmon"
                        : "https://source.unsplash.com/featured/?quinoa,bowl",
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 48,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white),
              label: Text(
                "Add to Food Journal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4285F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimilarOptionCard({
    required String title,
    required String calories,
    required String type,
    required String imageUrl,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _buildFoodImage(imageUrl),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "$calories kcal | $type",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF4285F4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: Text(
              "View Recipe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodImage(String imageUrl) {
    return Container(
      width: 80,
      height: 80,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 80,
            height: 80,
            color: Colors.grey[200],
            child: Icon(
              Icons.restaurant,
              color: Colors.grey[400],
              size: 40,
            ),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 80,
            height: 80,
            color: Colors.grey[200],
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
                strokeWidth: 2,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAddToJournalButton(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;

    return Container(
      width: double.infinity,
      height: isSmallScreen ? 44 : 48,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: isSmallScreen ? 18 : 24,
        ),
        label: Text(
          "Add to Food Journal",
          style: TextStyle(
            color: Colors.white,
            fontSize: isSmallScreen ? 14 : 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4285F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 16 : 24,
          ),
        ),
      ),
    );
  }
}

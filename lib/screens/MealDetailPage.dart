import 'package:flutter/material.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Detail'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: [
                  _buildMealImage(context),
                  _buildNutritionalInfo(context),
                  _buildIngredientsSection(context),
                  _buildInstructionsSection(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMealImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/meal.jpg'), // Ensure image exists
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNutritionalInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNutrientBox(
                Icons.local_fire_department,
                'Calories',
                '450 kcal',
                Colors.green.shade100,
              ),
              _buildNutrientBox(
                Icons.fitness_center,
                'Protein',
                '32g',
                Colors.blue.shade100,
              ),
              _buildNutrientBox(
                Icons.bakery_dining,
                'Carbs',
                '45g',
                Colors.yellow.shade100,
              ),
              _buildNutrientBox(
                Icons.opacity,
                'Fats',
                '18g',
                Colors.purple.shade100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNutrientBox(
      IconData icon, String label, String value, Color color) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.black54),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildIngredientsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleLarge, // Updated style
              ),
              SizedBox(height: 10),
              _buildIngredientRow(Icons.local_dining, '2 cups mixed greens'),
              _buildIngredientRow(
                  Icons.dinner_dining, '200g grilled chicken breast'),
              _buildIngredientRow(Icons.agriculture, '1 ripe avocado'),
              _buildIngredientRow(Icons.water_drop, '2 tbsp olive oil'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIngredientRow(IconData icon, String ingredient) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(width: 10),
          Text(ingredient),
        ],
      ),
    );
  }

  Widget _buildInstructionsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Instructions',
                style: Theme.of(context).textTheme.titleLarge, // Updated style
              ),
              SizedBox(height: 10),
              _buildInstructionStep(
                  1, 'Prep: Wash and dry all vegetables thoroughly'),
              _buildInstructionStep(
                  2, 'Chop: Cut chicken into bite-sized pieces'),
              _buildInstructionStep(
                  3, 'Mix: Combine all ingredients in a large bowl'),
              _buildInstructionStep(
                  4, 'Dress: Drizzle with olive oil and season to taste'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructionStep(int number, String instruction) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.blue.shade100,
            child: Text(
              '$number',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(instruction)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:snap_meal/screens/AIDIetitianPage.dart';
// import 'package:snap_meal/screens/HomePage.dart';
// import 'package:snap_meal/screens/MealDetailPage.dart';
// import 'package:snap_meal/screens/MealPlanningPage.dart';
// import 'package:snap_meal/screens/ScannedMealPage.dart';
// import 'package:snap_meal/screens/SignupPage.dart';
// import 'package:snap_meal/screens/HomePage.dart';
import 'package:snap_meal/screens/SignupPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignupPage(),
    );
  }
}

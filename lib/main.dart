import 'package:flutter/material.dart';

import 'package:snap_meal/screens/HomePage.dart';

void main() {
  runApp(SnapMealApp());
}

class SnapMealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

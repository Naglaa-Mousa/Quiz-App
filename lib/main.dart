import 'package:flutter/material.dart';

import 'features/home/views/home_Screen.dart';
void main( )   {
  runApp(const QuizApp());
}
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


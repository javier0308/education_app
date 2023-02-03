import 'package:flutter/material.dart';
import 'package:education_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education App',
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: (_) => const WelcomeScreen(),
        // HomeScreen.route: (_) => _createRoute(),
        CourseScreen.route: (context) => const CourseScreen(),
      },
    );
  }
}

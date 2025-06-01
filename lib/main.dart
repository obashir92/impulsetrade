import 'package:flutter/material.dart';
import 'package:impulsetrade/screens/create_setup_screen.dart';
import 'package:impulsetrade/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
      routes: {
        '/createsetup' : (context) => CreateSetupScreen(),
      }
    );
  }
}

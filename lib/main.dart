import 'package:flutter/material.dart';
import 'package:for_presentation/Page/FirebaseMainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '도토리게임즈: 개발기획서',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: FirebaseMainPage(),
      ),
    );
  }
}

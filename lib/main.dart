import 'package:flutter/material.dart';
import 'package:for_presentation/Page/ContentWidget.dart';
import 'package:for_presentation/Page/FirebaseMainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '잇당: 성장전략 조사 페이지',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: ContentWidget(),
      ),
    );
  }
}


import 'package:apgar_app/pages/pageView.dart';
import 'package:apgar_app/pages/skippage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageViewData(),
      debugShowCheckedModeBanner: false,
    );
  }
}


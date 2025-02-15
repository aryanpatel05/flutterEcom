// ignore_for_file: unused_import

import 'package:e_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/into_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}

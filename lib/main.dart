import 'package:bhagavad_gita/controllers/json_data_controller.dart';
import 'package:bhagavad_gita/controllers/pageController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BhagavadGita(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageControlController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

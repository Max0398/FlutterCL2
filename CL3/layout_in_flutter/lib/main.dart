import 'package:flutter/material.dart';
import 'package:layout_in_flutter/cupertino_app.dart';
import 'package:layout_in_flutter/layout_page.dart';
import 'package:layout_in_flutter/recipe_page.dart';
import 'home.dart';
import 'material_apps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/materialapps': (context) => const MaterialApps(),
        '/cupertino': (context) => const CupertinoApps(),
        '/layoutpage': (context) => const LayoutPage(),
        '/recipePage':(context)=> const RecipeApp(),
      },
    );
  }
}

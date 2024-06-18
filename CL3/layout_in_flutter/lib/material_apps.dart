import 'package:flutter/material.dart';

class MaterialApps extends StatelessWidget {
  const MaterialApps({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Material Apps';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Regresa a la página anterior
            },
          ),
          backgroundColor: Colors.indigo,
        ),
        body: const Center(
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 300, // Tamaño de la estrella
          ),
        ),
      ),
    );
  }
}

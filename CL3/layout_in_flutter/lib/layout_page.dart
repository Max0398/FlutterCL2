import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widget Layouts Demo',
      home: LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const WidgetLayoutsView();
  }
}

class WidgetLayoutsView extends StatelessWidget {
  const WidgetLayoutsView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Layouts'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa a la página anterior
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Layout con fila de 3 imágenes del mismo tamaño:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.rowWithSameSizeImages(),
            const SizedBox(height: 16.0),
            const Text(
              'Layout con columna de 3 imágenes espaciadas uniformemente verticalmente:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.columnWithEvenlySpacedImages(),
            const SizedBox(height: 16.0),
            const Text(
              'Layout con fila de 3 imágenes espaciadas uniformemente horizontalmente, cada una ocupando 1/3 del espacio:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.rowWithEvenlySpacedImagesExpanded(),
            const SizedBox(height: 16.0),
            const Text(
              'Layout con fila de 3 imágenes, donde la segunda imagen ocupa el doble de espacio que las otras:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.rowWithDoubleSizedMiddleImage(),
          ],
        ),
      ),
    );
  }
}

class WidgetLayouts {
  static Widget rowWithSameSizeImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildImage('images/img1.jpg'),
        _buildImage('images/img2.jpg'),
        _buildImage('images/img3.jpg'),
      ],
    );
  }

  static Widget columnWithEvenlySpacedImages() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/img1.jpg'),
        Image.asset('images/img2.jpg'),
        Image.asset('images/img3.jpg'),
      ],
    );
  }

  static Widget rowWithEvenlySpacedImagesExpanded() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset('images/img1.jpg'),
        ),
        Expanded(
          child: Image.asset('images/img2.jpg'),
        ),
        Expanded(
          child: Image.asset('images/img3.jpg'),
        ),
      ],
    );
  }

  static Widget rowWithDoubleSizedMiddleImage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset('images/img1.jpg'),
        ),
        Expanded(
          flex: 2,
          child: Image.asset('images/img2.jpg'),
        ),
        Expanded(
          child: Image.asset('images/img3.jpg'),
        ),
      ],
    );
  }

  static Widget _buildImage(String imagePath) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

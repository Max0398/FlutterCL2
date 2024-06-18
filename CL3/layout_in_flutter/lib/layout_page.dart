import 'package:flutter/material.dart';
class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widget Layouts Demo',
      home: WidgetLayoutsView(),
    );
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
            WidgetLayouts.rowWithSameSizeImages(), // Función para crear una fila con imágenes del mismo tamaño
            const SizedBox(height: 16.0),
            const Text(
              'Layout con columna de 3 imágenes espaciadas uniformemente verticalmente:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.columnWithEvenlySpacedImages(), // Función para crear una columna con imágenes espaciadas uniformemente verticalmente
            const SizedBox(height: 16.0),
            const Text(
              'Layout con fila de 3 imágenes espaciadas uniformemente horizontalmente, cada una ocupando 1/3 del espacio:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.rowWithEvenlySpacedImagesExpanded(), // Función para crear una fila con imágenes espaciadas uniformemente horizontalmente, cada una ocupando 1/3 del espacio
            const SizedBox(height: 16.0),
            const Text(
              'Layout con fila de 3 imágenes, donde la segunda imagen ocupa el doble de espacio que las otras:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            WidgetLayouts.rowWithDoubleSizedMiddleImage(), // Función para crear una fila con imágenes, donde la segunda imagen ocupa el doble de espacio que las otras
          ],
        ),
      ),
    );
  }
}

class WidgetLayouts {
  // Crea una fila con 3 imágenes del mismo tamaño
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

  // Crea una columna con 3 imágenes espaciadas uniformemente verticalmente
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

  // Crea una fila con 3 imágenes espaciadas uniformemente horizontalmente, cada una ocupando 1/3 del espacio
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

  // Crea una fila con 3 imágenes, donde la segunda imagen ocupa el doble de espacio que las otras
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

  // Método privado para construir las imágenes con el mismo tamaño
  static Widget _buildImage(String imagePath) {
    return SizedBox(
      width: 100, // Elige el tamaño deseado
      height: 100, // Elige el tamaño deseado
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 132, 46, 0.71),
              ),
              child: Text('Menu'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
                onTap: () => Navigator.pushNamed(context, '/home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.circle_sharp,
                  color: Colors.red,
                ),
                title: const Text(
                  'Material Apps',
                  style: TextStyle(color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
                onTap: () => Navigator.pushNamed(context, '/materialapps'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.rectangle_sharp,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Cupertino',
                  style: TextStyle(color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
                onTap: () => Navigator.pushNamed(context, '/cupertino'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.pages_rounded,
                  color: Colors.green,
                ),
                title: const Text(
                  'Layout Pages',
                  style: TextStyle(color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
                onTap: () => Navigator.pushNamed(context, '/layoutpage'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.card_giftcard,
                  color: Colors.green,
                ),
                title: const Text(
                  'Card Recipe',
                  style: TextStyle(color: Colors.indigo),
                  textAlign: TextAlign.center,
                ),
                onTap: () => Navigator.pushNamed(context, '/recipePage'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Codelab 3',
          style: TextStyle(color: Colors.black),
        ),

        backgroundColor: Colors.blueAccent[100],
      ),
      body: Container(
        color: Colors.white, // Fondo blanco
        child: Center(
          child: Image.asset(
            'images/game.png',
            fit: BoxFit.contain, // Ajustar la imagen manteniendo su aspecto
            width: MediaQuery.of(context).size.width * 0.8, // Ancho máximo de la imagen
          ),
        ),
      ),
    );
  }
}

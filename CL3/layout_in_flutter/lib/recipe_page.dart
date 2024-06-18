import 'package:flutter/material.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout demo',
      home:  RecipeHomePage(), // Página principal de la aplicación
    );
  }
}

class RecipeHomePage extends StatelessWidget {
  const RecipeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strawberry Pavlova Recipe'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const RecipeDetails(), // Detalles de la receta
    );
  }
}

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: const Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(
                width: 440,
                child: RecipeInfo(), // Información de la receta
              ),
              MainImage(), // Imagen principal de la receta
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeInfo extends StatelessWidget {
  const RecipeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: const Column(
        children:  [
          TitleText(), // Título de la receta
          SubTitle(), // Subtítulo de la receta
          Ratings(), // Calificaciones de la receta
          IconList(), // Lista de iconos de la receta
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova', // Título de la receta
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
          'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
          'topped with fruit and whipped cream.', // Subtítulo de la receta
      textAlign: TextAlign.center,
      style:  TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
           Text(
            '170 Reviews', // Número de reseñas de la receta
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class IconList extends StatelessWidget {
  const IconList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18,
        height: 2,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green),
                Text('PREP:'), // Tiempo de preparación
                Text('25 min'), // Duración de la preparación
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green),
                Text('COOK:'), // Tiempo de cocción
                Text('1 hr'), // Duración de la cocción
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green),
                Text('FEEDS:'), // Porciones
                Text('4-6'), // Número de porciones
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'images/StrawberryPavlova.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

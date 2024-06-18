import 'package:flutter/material.dart';


class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App'),
      ),
      body: const RecipeDetails(),
    );
  }
}

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 300,
                  child: MainImage(),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RecipeInfo(),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeInfo extends StatelessWidget {
  const RecipeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(), // Título de la receta
        const SizedBox(height: 8),
        const SubTitle(), // Subtítulo de la receta
        const SizedBox(height: 8),
        const Ratings(), // Calificaciones de la receta
        const SizedBox(height: 8),
        const IconList(), // Lista de iconos de la receta
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Strawberry Pavlova', // Título de la receta
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 30,
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.', // Subtítulo de la receta
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 16,
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  const Ratings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => Icon(
              index < 3 ? Icons.star : Icons.star_border,
              color: Colors.green,
            ),
          ),
        ),
        Text(
          '170 Reviews', // Número de reseñas de la receta
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green),
            const Text('PREP:'), // Tiempo de preparación
            const Text('25 min'), // Duración de la preparación
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green),
            const Text('COOK:'), // Tiempo de cocción
            const Text('1 hr'), // Duración de la cocción
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green),
            const Text('FEEDS:'), // Porciones
            const Text('4-6'), // Número de porciones
          ],
        ),
      ],
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/StrawberryPavlova.jpg',
      fit: BoxFit.cover,
    );
  }
}

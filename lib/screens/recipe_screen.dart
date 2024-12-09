import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  final String category;

  RecipeScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recipes;

    switch (category) {
      case 'Café da manhã':
        recipes = [
          {
            'title': 'Misto Quente',
            'image': 'assets/misto_quente.jpeg',
            'ingredients': 'Ingredientes: Pão, presunto, queijo, manteiga.',
            'steps': '1. Passe manteiga no pão.\n2. Coloque presunto e queijo entre as fatias.\n3. Grelhe em uma frigideira até dourar.'
          },
          {
            'title': 'Pão de Queijo',
            'image': 'assets/pao_de_queijo_fit.jpg',
            'ingredients': 'Ingredientes: Polvilho, queijo, ovos, leite, óleo.',
            'steps': '1. Misture os ingredientes em uma tigela.\n2. Modele bolinhas e coloque em uma assadeira.\n3. Asse por 20 minutos em forno pré-aquecido a 180°C.'
          },
        ];
        break;
      case 'Almoço':
        recipes = [
          {
            'title': 'Lombo Recheado',
            'image': 'assets/lombo_recheado.jpeg',
            'ingredients': 'Ingredientes: Lombo, queijo, presunto, temperos.',
            'steps': '1. Tempere o lombo com sal e alho.\n2. Recheie com queijo e presunto.\n3. Asse em forno médio por 1 hora.'
          },
          {
            'title': 'Lasanha',
            'image': 'assets/lasanha_almoço.jpg',
            'ingredients': 'Ingredientes: Massa de lasanha, molho de tomate, carne moída, queijo.',
            'steps': '1. Cozinhe a carne moída com temperos.\n2. Monte as camadas de lasanha em uma travessa.\n3. Asse por 40 minutos em forno pré-aquecido a 180°C.'
          },
        ];
        break;
      case 'Jantar':
        recipes = [
          {
            'title': 'Panqueca de Frango',
            'image': 'assets/panqueca_jantar.webp',
            'ingredients': 'Ingredientes: Massa de panqueca, frango desfiado, molho de tomate.',
            'steps': '1. Prepare a massa de panqueca.\n2. Recheie com frango desfiado.\n3. Asse por 20 minutos com molho de tomate.'
          },
          {
            'title': 'Cuscuz',
            'image': 'assets/cuzcuz_jantar.jpg',
            'ingredients': 'Ingredientes: Milho, água, sal, manteiga.',
            'steps': '1. Misture o milho com a água e o sal.\n2. Cozinhe até a mistura começar a desgrudar.\n3. Sirva com manteiga por cima.'
          },
        ];
        break;
      case 'Lanche':
        recipes = [
          {
            'title': 'Pão Doce de Chocolate',
            'image': 'assets/paodoce_lanche.webp',
            'ingredients': 'Ingredientes: Farinha, açúcar, chocolate, fermento, leite.',
            'steps': '1. Misture os ingredientes e sove a massa.\n2. Modele os pães e deixe crescer.\n3. Asse por 20 minutos a 180°C.'
          },
          {
            'title': 'Rosquinha Frita',
            'image': 'assets/rosquinha_lanche.webp',
            'ingredients': 'Ingredientes: Farinha, açúcar, fermento, ovos, óleo.',
            'steps': '1. Misture a massa e modele as rosquinhas.\n2. Frite em óleo quente até dourar.\n3. Polvilhe açúcar com canela.'
          },
        ];
        break;
      default:
        recipes = [];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Ícone de seta
          onPressed: () {
            Navigator.of(context).pop(); // Volta para a tela anterior
          },
        ),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    recipes[index]['image']!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      recipes[index]['title']!,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                    child: Text(
                      'Ingredientes: ${recipes[index]['ingredients']!}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                    child: Text(
                      'Passos:\n${recipes[index]['steps']!}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

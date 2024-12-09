import 'package:flutter/material.dart';
import 'recipe_screen.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF56D15), // Cor de fundo personalizada
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Volta para a tela anterior
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Categorias de Refeições',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32, // Tamanho maior do título
                        fontWeight: FontWeight.bold, // Deixa o título em negrito
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryButton(context, 'Café da manhã', Colors.yellow.shade800),
                      SizedBox(height: 16),
                      _buildCategoryButton(context, 'Almoço', Colors.yellow.shade800),
                      SizedBox(height: 16),
                      _buildCategoryButton(context, 'Jantar', Colors.yellow.shade800),
                      SizedBox(height: 16),
                      _buildCategoryButton(context, 'Lanche', Colors.yellow.shade800),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String title, Color color) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RecipeScreen(category: title)),
          );
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

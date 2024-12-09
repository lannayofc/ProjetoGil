import 'package:flutter/material.dart';
import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF56D15), // Cor de fundo personalizada
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30), // Espaçamento acima do botão
                child: Image.asset(
                  'assets/Flutter.png',
                  width: 400,
                  height: 400,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60), // Aumenta o tamanho do botão
                  backgroundColor: Colors.yellow[800], // Cor de fundo do botão
                  foregroundColor: Colors.black, // Cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()),
                  );
                },
                child: Text('Entrar', style: TextStyle(fontSize: 20)), // Fonte maior
              ),
            ],
          ),
        ),
      ),
    );
  }
}

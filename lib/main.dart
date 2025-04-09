import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resident_portal/core/widgets/app_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SVG de fundo
          SvgPicture.asset(
            'assets/background.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Ajusta o SVG ao tamanho da tela
          ),

          // Conteúdo por cima do fundo
          Center(
            child: Text(
              'Oi, mundo!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

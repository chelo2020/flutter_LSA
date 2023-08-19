import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/op.dart';
import 'package:flutter_application_1/qsp.dart';
import 'package:flutter_application_1/tp.dart';

class MainMenu extends StatelessWidget {
  static const name = 'menu';
  final List<Visitor> visitorList;

  const MainMenu({
    Key? key,
    required this.visitorList,
    required String errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a IULSA'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('ruta_de_tu_imagen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButtonColumn(
                  context,
                  'ruta_de_tu_imagen1.jpg', // Ruta de la imagen 1
                  'Tematicas',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TematicasPage(
                          selectedTheme: '',
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildButtonColumn(
                  context,
                  'ruta_de_tu_imagen2.jpg', // Ruta de la imagen 2
                  'Quienes Somos',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuienesSomosPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildButtonColumn(
                  context,
                  'ruta_de_tu_imagen3.jpg', // Ruta de la imagen 3
                  'Objetivos de la App',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ObjetivosPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _buildButtonColumn(
                  context,
                  'ruta_de_tu_imagen4.jpg', // Ruta de la imagen 4
                  'Salir',
                  () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Salir'),
                        content:
                            const Text('¿Estás seguro de que deseas salir?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                            child: const Text('Salir'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonColumn(
    BuildContext context,
    String imagePath,
    String buttonText,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        Image.asset(imagePath,
            height: 60), // Cambia la altura según tus necesidades
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    );
  }
}

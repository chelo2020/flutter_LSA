import 'package:flutter/material.dart';

class QuienesSomosPage extends StatelessWidget {
  static const name = 'qsp';
  const QuienesSomosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quienes Somos'),
      ),
      body: const Center(
        child: Text('Contenido de Quienes Somos'),
      ),
    );
  }
}

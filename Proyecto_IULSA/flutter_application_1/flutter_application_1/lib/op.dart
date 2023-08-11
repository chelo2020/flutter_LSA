import 'package:flutter/material.dart';

class ObjetivosPage extends StatelessWidget {
  const ObjetivosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objetivos de la App'),
      ),
      body: const Center(
        child: Text('Contenido de Objetivos de la App'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TematicasPage extends StatelessWidget {
  const TematicasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tematicas'),
      ),
      body: const Center(
        child: Text('Contenido de Tematicas'),
      ),
    );
  }
}

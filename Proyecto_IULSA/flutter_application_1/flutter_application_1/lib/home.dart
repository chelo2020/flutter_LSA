import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/op.dart';
import 'package:flutter_application_1/qsp.dart';
import 'package:flutter_application_1/tp.dart';

class MainMenu extends StatelessWidget {
  final List<Visitor> visitorList;

  MainMenu({required this.visitorList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bienvenidos a IULSA'),
        ),
        body: Container(
          color: Colors.lightBlue,
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TematicasPage(),
                    ),
                  );
                },
                child: const Text('Tematicas'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuienesSomosPage(),
                    ),
                  );
                },
                child: const Text('Quienes Somos'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ObjetivosPage(),
                    ),
                  );
                },
                child: const Text('Objetivos de la App'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Salir'),
                      content: const Text('¿Estás seguro de que deseas salir?'),
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
                child: const Text('Salir'),
              ),
            ],
          ),
        ));
  }
}

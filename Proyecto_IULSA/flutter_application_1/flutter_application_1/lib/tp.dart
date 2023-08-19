import 'package:flutter/material.dart';

class TematicasPage extends StatefulWidget {
  static const name = 'tp';

  const TematicasPage({super.key, required String selectedTheme});

  @override
  // ignore: library_private_types_in_public_api
  _TematicasPageState createState() => _TematicasPageState();
}

class _TematicasPageState extends State<TematicasPage> {
  // ignore: prefer_final_fields
  List<String> _selectedThemes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tematicas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: List<Widget>.generate(
                themes.length,
                (int index) {
                  return ChoiceChip(
                    label: Text(themes[index]),
                    selected: _selectedThemes.contains(themes[index]),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          _selectedThemes.add(themes[index]);
                        } else {
                          _selectedThemes.removeWhere((String name) {
                            return name == themes[index];
                          });
                        }
                      });
                    },
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 20),
            Column(
              children: _selectedThemes
                  .map((theme) => Container(
                        margin: const EdgeInsets.all(8.0),
                        width: 100,
                        height: 100,
                        color: Colors.grey, // Color del fondo de los cuadros
                        child: Center(
                          child: Text(
                            theme,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  final List<String> themes = [
    'Tema 1',
    'Tema 2',
    'Tema 3',
    'Tema 4',
    'Tema 1',
    'Tema 2',
    'Tema 3',
    'Tema 4',
    'Tema 1',
    'Tema 2',
    'Tema 3',
    'Tema 4',
    'Tema 1',
    'Tema 2',
    'Tema 3',
    'Tema 4',
    // Agrega más temas según necesites
  ];
}

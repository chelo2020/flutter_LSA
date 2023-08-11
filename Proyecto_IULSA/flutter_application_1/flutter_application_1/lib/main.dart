import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(VisitorApp());
}

class Visitor {
  final String name;
  final DateTime entryDate;

  Visitor(this.name, this.entryDate);
}

class VisitorApp extends StatelessWidget {
  final List<Visitor> visitorList = [];

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto IULSA',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyecto IULSA'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('IULSA'),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainMenu(
                            visitorList: const [],
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'animated_list.dart';
import 'autocomplete.dart';
import 'checkbox_list_tile.dart';
import 'column.dart';
import 'cupertino_picker.dart';
import 'custom_paint.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantalla Única',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB2DFDB), // Color pastel
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              'Mederyth Azul Torres',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '22308051281108',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                for (var i = 1; i <= 6; i++) ...[
                  // Limité a 8 botones
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (i) {
                              case 1:
                                return const Widget012();
                              case 2:
                                return const Widget023();
                              case 3:
                                return const Widget034();
                              case 4:
                                return const Widget048();
                              case 5:
                                return const Widget059();
                              case 6:
                                return const Widget071();
                              default:
                                return const Widget012();
                            }
                          },
                        ),
                      );
                    },
                    child: Text('Ir a Pantalla $i'),
                  ),
                  const SizedBox(height: 5),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

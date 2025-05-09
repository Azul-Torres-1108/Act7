import 'package:flutter/material.dart';

//! Column con AppBar, botón de regreso y alineación al fondo

class Widget048 extends StatelessWidget {
  const Widget048({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('Column'),
        backgroundColor: const Color(0xFF0061A2),
      ),
      body: SafeArea(
        // Asegura que el contenido no se sobreponga en áreas no seguras
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.end, // Alinea los elementos al fondo
          children: const <Widget>[
            Text('Row 1'),
            Text('Row 2'),
            Text('Row 3'),
            Text('Row 4'),
            Text('Row 5'),
            Text('Flutter Mapp'),
          ],
        ),
      ),
    );
  }
}

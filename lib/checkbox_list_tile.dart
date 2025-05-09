import 'package:flutter/material.dart';

//! CheckboxListTile con AppBar y botón de regreso

class Widget034 extends StatefulWidget {
  const Widget034({Key? key}) : super(key: key);

  @override
  State<Widget034> createState() => _Widget034State();
}

class _Widget034State extends State<Widget034> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('CheckboxListTile'),
        backgroundColor: const Color(0xFF0061A2),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          subtitle: const Text('This is a subtitle'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}

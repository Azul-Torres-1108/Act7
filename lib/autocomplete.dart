import 'package:flutter/material.dart';

//! Autocomplete con AppBar y botón de regreso

class Widget023 extends StatelessWidget {
  const Widget023({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('Autocomplete'),
        backgroundColor: const Color(0xFF0061A2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print('The $item was selected');
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//! CupertinoPicker con AppBar y botón de regreso

class Widget059 extends StatefulWidget {
  const Widget059({Key? key}) : super(key: key);

  @override
  State<Widget059> createState() => _Widget059State();
}

class _Widget059State extends State<Widget059> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('CupertinoPicker'),
        backgroundColor: const Color(0xFF0061A2),
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: _selectedValue,
                  ),
                  children: const [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                  ],
                  onSelectedItemChanged: (int value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

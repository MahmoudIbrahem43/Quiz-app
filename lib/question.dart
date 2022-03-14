import 'package:flutter/material.dart';

class Quetsion extends StatefulWidget {
  final String text;
  
  Quetsion(this.text);

  @override
  State<Quetsion> createState() => _QuetsionState();
}

class _QuetsionState extends State<Quetsion> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

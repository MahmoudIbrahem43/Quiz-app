import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
   final Function handler;

  Answer(this.text,this.handler);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            '$text',
            style: const TextStyle(fontSize: 18),
          ),
          onPressed: (){
            handler();
          },
        ),
      ),
    );
  }
}

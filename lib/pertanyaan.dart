import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String textPertanyaan;

  Pertanyaan(this.textPertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textPertanyaan,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}

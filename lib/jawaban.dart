import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function pilihJawaban;
  final String textJawaban;

  Jawaban(this.pilihJawaban, this.textJawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          textJawaban,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: pilihJawaban,
      ),
    );
  }
}

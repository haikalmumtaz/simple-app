import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int hasilSkor;
  final Function resetQuiz;

  Hasil(this.hasilSkor, this.resetQuiz);

  String get kata2Hasil {
    String textHasil;
    if (hasilSkor <= 8) {
      textHasil = 'Kamu hebat';
    } else if (hasilSkor <= 12) {
      textHasil = 'Lumayan';
    } else if (hasilSkor <= 16) {
      textHasil = 'Kamu agak aneh';
    } else {
      textHasil = 'Kamu gak wajar';
    }
    return textHasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            kata2Hasil,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Ulang Quiz',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

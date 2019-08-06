import 'package:flutter/material.dart';

import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int indexPertanyaan;
  final Function pertanyaanDijawab;

  Kuis({
      @required this.pertanyaan,
      @required this.pertanyaanDijawab,
      @required this.indexPertanyaan
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(pertanyaan[indexPertanyaan]['pertanyaan']),

        ...(pertanyaan[indexPertanyaan]['jawaban'] as List<Map<String, Object>>)
            .map((jawaban) {
          return Jawaban(() => pertanyaanDijawab(jawaban['score']), jawaban['text']);
        }).toList()

        // Jawaban(_pertanyaanDijawab),
        // Jawaban(_pertanyaanDijawab),
        // Jawaban(_pertanyaanDijawab),
      ],
    );
  }
}

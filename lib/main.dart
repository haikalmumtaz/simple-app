import 'package:flutter/material.dart';

// import './pertanyaan.dart';
// import './jawaban.dart';
import './kuis.dart';
import './hasil.dart';

// void main() {
//   runApp(MyApp());
// } coba

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pertanyaan = const [
    {
      'pertanyaan': 'Apa warna favorit?',
      'jawaban': [
        {'text': 'Hitam', 'score': 10},
        {'text': 'Merah', 'score': 5},
        {'text': 'Biru', 'score': 3},
        {'text': 'Kuning', 'score': 1}
      ],
    },
    {
      'pertanyaan': 'Apa binatang piaraan anda?',
      'jawaban': [
        {'text': 'Kambing', 'score': 11},
        {'text': 'Kucing', 'score': 6},
        {'text': 'Rusa', 'score': 4},
        {'text': 'Kelinci', 'score': 2}
      ],
    },
    {
      'pertanyaan': 'Siapa instruktur favorit?',
      'jawaban': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    }
  ];

  var _indexPertanyaan = 0;
  var _totalSkor = 0;

  void _resetQuiz() {
    setState(() {
      _indexPertanyaan = 0;
      _totalSkor = 0;
    });
  }

  void _pertanyaanDijawab( int skor ) {

    //_totalSkor = _totalSkor + skor;
    _totalSkor += skor;

    setState(() {
      _indexPertanyaan = _indexPertanyaan + 1;
    });

    print(_indexPertanyaan);

    if (_indexPertanyaan < _pertanyaan.length) {
      print('Kami punya pertanyaan lagi');
    } else {
      print('Tidak ada lagi pertanyaan');
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Container(

    // );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Saya'),
        ),
        body: _indexPertanyaan < _pertanyaan.length
            ? Kuis(
                pertanyaanDijawab: _pertanyaanDijawab,
                indexPertanyaan: _indexPertanyaan,
                pertanyaan: _pertanyaan,
              )
            : Hasil(_totalSkor, _resetQuiz),
      ),
    );
  }
}

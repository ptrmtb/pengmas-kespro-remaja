import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chapter_1.dart';
import 'chapter_3.dart';

var CHAPTER_KUIS = const [
  Chapter1Page8(),
  Chapter1Page9(),
  Chapter1Page10(),
  Chapter1Page11(),
  Chapter1Page12(),
  Chapter1Page13(),
  Chapter3Page12(),
  Chapter3Page13(),
  Chapter3Page14(),
  Chapter3Page15(),
  Chapter3Page16(),
];

class ChapterKuis extends StatefulWidget {
  const ChapterKuis();

  @override
  State<ChapterKuis> createState() => _ChapterKuisState();
}

class _ChapterKuisState extends State<ChapterKuis> {
  double _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: _appBarTitle(),
        centerTitle: true,
        titleTextStyle: GoogleFonts.raleway(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 24.0,
              letterSpacing: 5),
        ),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) => CHAPTER_KUIS[index],
        itemCount: CHAPTER_KUIS.length,
        onPageChanged: (value) => _setProgressBarIndex(value),
      ),
    );
  }
  Widget _appBarTitle() {
    return Column(
      children: [
        FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.fitWidth,
          child: Text(
            "MITOS / FAKTA?".toUpperCase(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_KUIS.length.toDouble(),
            backgroundColor: Colors.white,
            color: Colors.blue[200],
          ),
        )
      ],
    );
  }

  void _setProgressBarIndex(int index) {
    setState(() {
      _currentIndex = index.toDouble() + 1;
    });
  }
}
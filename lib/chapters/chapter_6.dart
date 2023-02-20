import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_6 = const [
  Chapter6Page1(),
];

class Chapter6 extends StatefulWidget {
  const Chapter6();

  @override
  State<Chapter6> createState() => _Chapter6State();
}

class _Chapter6State extends State<Chapter6> {
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
        itemBuilder: (context, index) => CHAPTER_6[index],
        itemCount: CHAPTER_6.length,
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
            "Tentang Kami".toUpperCase(),
          ),
        ),
        Container(margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_6.length.toDouble(),
            backgroundColor: Colors.white,
            color: Colors.pink[200],
          ),
        )
      ],
    );
  }

  void _setProgressBarIndex(int index) {
    setState(() {
      _currentIndex = index.toDouble()+1;
    });
  }
}

class Chapter6Page1 extends StatelessWidget {
  const Chapter6Page1();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Terima kasih!"),
              PageBody(bodyText: "Aplikasi ini merupakan luaran dari Program Pengabdian Masyarakat yang digagas oleh dr. Ardiana Kusumaningrum, Sp.MK(K) dari Departemen Mikrobiologi Klinik, Fakultas Kedokteran Universitas Indonesia serta dr. Sri Wahdini, M.Biomed., Sp.Ak. dari Departemen Parasitologi, Fakultas Kedokteran Universitas Indonesia.\n\nMeskipun sederhana, harapannya ilmu yang ada di dalam aplikasi kecil ini dapat bermanfaat buatmu ya!\n\nAplikasi ini diracik oleh PMT. Apabila ada pertanyaan lebih lanjut, silahkan email kami di: putra.m.tampubolon@gmail.com."),
              PageBody(bodyText: "Atribusi lisensi:\nGambar yang digunakan pada aplikasi ini merupakan gambar-gambar dengan lisensi Creative Common 4.0 (CC) yang digunakan dengan tujuan edukasi serta bersifat non-profit. Sumber penggunaan gambar tercantum dalam watermark di gambar yang bersangkutan. Beberapa ilustrasi merupakan karya orisinil dari Asma Muthmainah Hanifah."),
              PageFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_3 = const [
  Chapter3Page1(),
  Chapter3Page2(),
  Chapter3Page3(),
  Chapter3Page4(),
  Chapter3Page5(),
  Chapter3Page6(),
  Chapter3Page7(),
  Chapter3Page8(),
  Chapter3Page9(),
  Chapter3Page10(),
  Chapter3Page11(),
  // Chapter3Page12(),
  // Chapter3Page13(),
  // Chapter3Page14(),
  // Chapter3Page15(),
  // Chapter3Page16(),
];

class Chapter3 extends StatefulWidget {
  const Chapter3();

  @override
  State<Chapter3> createState() => _Chapter3State();
}

class _Chapter3State extends State<Chapter3> {
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
        itemBuilder: (context, index) => CHAPTER_3[index],
        itemCount: CHAPTER_3.length,
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
            "Kesehatan Reproduksi Laki-laki".toUpperCase(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_3.length.toDouble(),
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

class Chapter3Page1 extends StatelessWidget {
  const Chapter3Page1();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Definisi Kesehatan Reproduksi"),
              PageImage(
                  imagePath:
                      "assets/images/c3p1.png",
                  imageCaption: "Ilustrasi kesehatan reproduksi laki-laki."),
              PageBody(
                  bodyText:
                      "Kesehatan reproduksi didefinisikan sebagai Kesejahteraan fisik, mental dan sosial yang utuh bukan hanya bebas dari penyakit atau kecacatan, (tetapi) dalam segala aspek yang berhubungan dengan sistem reproduksi, fungsi serta prosesnya (WHO)."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page2 extends StatelessWidget {
  const Chapter3Page2();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Kesehatan Reproduksi Remaja"),
              PageBody(
                  bodyText:
                      "Remaja secara fisik mampu melakukan fungsi proses reproduksi tetapi belum dapat mempertanggungjawabkan akibat dari proses reproduksi tersebut."),
              PageImage(
                  imagePath:
                      "assets/images/c3p2.jpg",
                  imageCaption: "Karakteristik remaja."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page3 extends StatelessWidget {
  const Chapter3Page3();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Masa Remaja (adolescence)"),
              PageImage(
                  imagePath:
                      "assets/images/c3p3.jpg",
                  imageCaption:
                      "Masa remaja merupakan masa peralihan anak-anak ke dewasa."),
              PageBody(
                  bodyText:
                      "Masa remaja merupakan masa peralihan unik yang merupakan persiapan menuju dewasa. Masa ini ditandai dengan perubahan-perubahan fisik, hormonal dan emosi. Umumnya, perubahan fisik lebih cepat sehingga mendahului kematangan psikis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page4 extends StatelessWidget {
  const Chapter3Page4();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Pembagian masa remaja"),
              PageBody(
                  bodyText:
                      "Masa remaja umumnya dibagi menjadi 3 periode waktu:"),
              PageImage(
                  imagePath:
                      "assets/images/c3p4.png",
                  imageCaption: "Tiga periode di masa remaja."),
              PageBody(bodyText: "Kalau kalian, sudah lewat semuanya belum?"),
              PageFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page5 extends StatelessWidget {
  const Chapter3Page5();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Apa itu pubertas?"),
              PageBody(
                  bodyText:
                      "Pubertas merupakan masa peralihan dari anak-anak menjadi manusia dewasa, yaitu saat seseorang mencapai kedewasaan secara biologis."),
              PageImage(
                  imagePath:
                      "assets/images/c3p5.jpg",
                  imageCaption:
                      "Ilustrasi periode pubertas pada remaja laki-laki dan perempuan."),
              PageBody(
                  bodyText:
                      "Masa peralihan ini juga ada bersamaan dengan masa remaja. Tahukah kamu apa itu masa remaja?"),
              PageFooter()
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page6 extends StatelessWidget {
  const Chapter3Page6();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Perubahan fisik pada pubertas"),
              PageImage(
                  imagePath:
                      "assets/images/c3p6.png",
                  imageCaption:
                      "Timeline perubahan fisik pada remaja Laki-laki."),
              PageBody(
                  bodyText:
                      "Remaja Laki-laki mengalami pertumbuhan pesat dari umur 10 ke 18. Pertumbuhan pesat ini juga diiringi dengan perkembangan organ reproduksinya.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page7 extends StatelessWidget {
  const Chapter3Page7();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Perubahan fisik pada pubertas"),
              PageBody(
                  bodyText:
                      "Selain mengalami pertambahan tinggi dan berat badan, remaja laki-laki juga mengalami perkembangan seks sekunder, seperti tumbuhnya rambut di dada, oragan reproduksi dan ketiak"),
              PageImage(
                  imagePath:
                      "assets/images/c3p7.png",
                  imageCaption:
                      "Perubahan fisik pada remaja Laki-laki di masa pubertas"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page8 extends StatelessWidget {
  const Chapter3Page8();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Perubahan fisik pada pubertas"),
              PageImage(
                  imagePath:
                      "assets/images/c3p8.png",
                  imageCaption:
                      "Daftar perubahan fisik remaja Laki-laki di masa pubertas."),
              PageBody(
                  bodyText:
                      "Perubahan fisik di atas biasanya selesai di umur 18 tahun.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page9 extends StatelessWidget {
  const Chapter3Page9();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Perubahan fisik pada pubertas"),
              PageImage(
                  imagePath:
                      "assets/images/c3p9.png",
                  imageCaption:
                      "Daftar perubahan fisik remaja Laki-laki di masa pubertas."),
              PageBody(
                  bodyText:
                      "Perubahan fisik di atas biasanya selesai di umur 18 tahun.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page10 extends StatelessWidget {
  const Chapter3Page10();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Organ Reproduksi Pria"),
              PageBody(
                  bodyText:
                      "Sekumpulan organ yang memiliki fungsi reproduksi untuk proses perkembangbiakan makhluk hidup.\n\nDapat mengalami gangguan, salah satunya karena kurangnya kebersihan di organ reproduksi."),
              PageImage(
                  imagePath:
                      "assets/images/c3p10.jpg",
                  imageCaption: "Struktur dan anatomi organ reproduksi Laki-laki."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page11 extends StatelessWidget {
  const Chapter3Page11();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Organ Reproduksi Pria"),
              PageBody(
                  bodyText:
                      "Berikut merupakan anatomi organ reproduksi pria beserta bagian-bagiannya."),
              PageImage(
                  imagePath:
                      "assets/images/c3p11.jpg",
                  imageCaption: "Struktur dan anatomi organ reproduksi Laki-laki."),
              PageBody(
                  bodyText:
                      "1. Vas deferens\n2. Kelenjar Prostat\n3. Penis\n4. Uretra\n5. Buah Zakar\n6. Testis\n7.Usus Besar\n8.Vesika seminalis\n9.Kandung kemih")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter3Page12 extends StatelessWidget {
  const Chapter3Page12();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20.0, color: Colors.blueGrey)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const PageHeader(
                      headerText:
                          "'Laki-laki tidak akan menjadi korban kekerasan seksual'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Laki-laki juga punya risiko menjadi korban kekerasan seksual.\n\nEdukasi akan informasi yang tepat mengenai kesehatan reproduksi dapat meminimalisir kejadian ini.",
                      patternFeedback: "Laki-laki juga punya risiko menjadi korban kekerasan seksual"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter3Page13 extends StatelessWidget {
  const Chapter3Page13();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20.0, color: Colors.blueGrey)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const PageHeader(
                      headerText:
                          "'Masturbasi pada laki-laki akan menyebabkan sel sperma habis'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Produksi sel sperma dipengaruhi oleh status hormonal seseorang.\n\nMasturbasi tidak menyebabkan sel sperma seseorang habis, namun dalam jangka waktu panjang bisa mempengaruhi kesehatan reproduksi secara umum.",
                      patternFeedback: "Masturbasi tidak menyebabkan sel sperma seseorang habis"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter3Page14 extends StatelessWidget {
  const Chapter3Page14();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20.0, color: Colors.blueGrey)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const PageHeader(
                      headerText:
                          "'Melakukan hubungan seksual pertama kali tidak akan membuat hamil'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Kehamilan dapat terjadi meskipun pada hubungan seksual yang pertama kali.",
                      patternFeedback: "Kehamilan dapat terjadi meskipun pada hubungan seksual yang pertama kali"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter3Page15 extends StatelessWidget {
  const Chapter3Page15();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20.0, color: Colors.blueGrey)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const PageHeader(
                      headerText:
                          "'Belajar kesehatan reproduksi sama saja mempelajari pornografi'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Kesehatan reproduksi tidak sama dengan pornografi.\n\nSeseorang perlu mendapatkan edukasi yang tepat terkait kesehatan reproduksi sehingga bisa lebih bijak dalam menyikapi informasi yang tidak tepat, termasuk pornografi.",
                      patternFeedback: "Kesehatan reproduksi tidak sama dengan pornografi"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter3Page16 extends StatelessWidget {
  const Chapter3Page16();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20.0, color: Colors.blueGrey)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const PageHeader(
                      headerText:
                          "'HIV tidak menular melalui pelukan'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Fakta",
                      feedback:
                          "HIV ditularkan melalui kontak darah dan hubungan seksual, namun tidak menular melalui sentuhan, pelukan atau berciuman.",
                      patternFeedback: "HIV ditularkan melalui kontak darah dan hubungan seksual"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}

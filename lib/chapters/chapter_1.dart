import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_1 = const [
  Chapter1Page1(),
  Chapter1Page2(),
  Chapter1Page3(),
  Chapter1Page4(),
  Chapter1Page5(),
  Chapter1Page6(),
  Chapter1Page7(),
  // Chapter1Page8(),
  // Chapter1Page9(),
  // Chapter1Page10(),
  // Chapter1Page11(),
  // Chapter1Page12(),
  // Chapter1Page13()
];

class Chapter1 extends StatefulWidget {
  const Chapter1();

  @override
  State<Chapter1> createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
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
        itemBuilder: (context, index) => CHAPTER_1[index],
        itemCount: CHAPTER_1.length,
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
            "Kesehatan Reproduksi Perempuan".toUpperCase(),
          ),
        ),
        Container(margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_1.length.toDouble(),
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

class Chapter1Page1 extends StatelessWidget {
  const Chapter1Page1();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Apa itu kesehatan reproduksi?"),
              PageBody(
                  bodyText:
                      "Kesehatan reproduksi didefinisikan sebagai kesejahteraan fisik, mental dan sosial yang utuh bukan hanya bebas dari penyakit atau kecacatan, (tetapi) dalam segala aspek yang berhubungan dengan sistem reproduksi, fungsi serta prosesnya (WHO)."),
              PageImage(
                imagePath:
                    "assets/images/c1p1.png",
                imageCaption:
                    "Menjaga kesehatan reproduksi merupakan kewajiban masing-masing individu.",
              ),
              PageBody(
                  bodyText:
                      "Kesehatan reproduksi itu sangat penting untuk dipahami semua orang. Seperti contohnya, semua orang pasti mengalami yang namanya pubertas. Namun, apakah semua orang teredukasi tentang hal tersebut?"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page2 extends StatelessWidget {
  const Chapter1Page2();
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
                      "assets/images/c1p2.jpg",
                  imageCaption:
                      "Ilustrasi periode pubertas pada remaja laki-laki dan perempuan."),
              PageBody(
                  bodyText:
                      "Masa peralihan ini juga ada bersamaan dengan masa remaja. Tahukah kamu apa itu masa remaja?"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page3 extends StatelessWidget {
  const Chapter1Page3();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: [
              const PageHeader(headerText: "Masa Remaja"),
              PageContainer(
                containerChild: EasyRichText(
                  "Kalian pasti pernah dengar lagu 'Masa Remaja' dari grup band HiVi, kan?",
                  defaultStyle: const TextStyle(fontSize: 16, height: 1.8),
                  patternList: [
                    EasyRichTextPattern(
                        targetString: "'Masa Remaja'",
                        style: TextStyle(fontStyle: FontStyle.italic))
                  ],
                ),
              ),
              const PageImage(
                  imagePath:
                      "assets/images/c1p3.png",
                  imageCaption:
                      "Ketertarikan terhadap lawan jenis merupakan salah satu tanda sudah memasuki masa remaja."),
              const PageBody(
                  bodyText:
                      "Masa remaja merupakan masa peralihan unik yang merupakan persiapan menuju dewasa. Masa ini ditandai dengan perubahan-perubahan fisik, hormonal dan emosi. Umumnya, perubahan fisik lebih cepat sehingga mendahului kematangan psikis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page4 extends StatelessWidget {
  const Chapter1Page4();
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
                      "assets/images/c1p4.png",
                  imageCaption: "Tiga periode di masa remaja."),
              PageBody(bodyText: "Kalau kalian, sudah lewat semuanya belum?"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page5 extends StatelessWidget {
  const Chapter1Page5();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Perubahan fisik remaja"),
              PageBody(
                  bodyText:
                      "Pada masa remaja, akan terjadi perubahan fisik yang drastis. Tinggi badan mengalami percepatan pertumbuhan. Percepatan ini terjadi saat rambut pubis sudah tumbuh dan tumbuh payudara"),
              PageImage(
                  imagePath:
                      "assets/images/c1p5.png",
                  imageCaption:
                      "Percepatan pertumbuhan tinggi (growth spurt) pada remaja laki-laki dan peremmpuan."),
              PageBody(
                  bodyText:
                      "Pertambahan tinggi ini akan memuncak pada saat tahap akhir pubertas, biasanya untuk perempuan di usia 13 tahun dan laki-laki di usia 14 tahun. Setelah melewati percepatan pertumbuhan tinggi ini, tinggi badan akan bertambah 9 sampai 10 cm."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page6 extends StatelessWidget {
  const Chapter1Page6();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Organ Reproduksi"),
              PageBody(
                  bodyText:
                      "Apa itu organ reproduksi?\nOrgan reproduksi adalah sekumpulan organ yang memiliki fungsi reproduksi untuk proses perkembangbiakan makhluk hidup."),
              PageImage(
                  imagePath:
                      "assets/images/c1p6.jpg",
                  imageCaption: "Anatomi ovarium (rahim) pada perempuan."),
              PageBody(
                  bodyText:
                      "Organ reproduksi juga dapat mengalami gangguan, salah satunya karena kurangnya kebersihan di organ reproduksi.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page7 extends StatelessWidget {
  const Chapter1Page7();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Menstruasi"),
              PageBody(
                  bodyText:
                      "Menstruasi adalah perdarahan yang terjadi akibat meluruhnya dinding rahim. Luruhnya dinding rahim terjadi akibat tidak terjadinya proses pembuahan/fertilisasi. Menstruasi pertama yang terjadi pada remaja perempuan disebut juga sebagai menarkus (menarche). Menarkus menandakan remaja perempuan telah memasuki masa akhir pubertas"),
              PageImage(
                  imagePath:
                      "assets/images/c1p7.png",
                  imageCaption:
                      "Gambaran umum siklus menstruasi pada perempuan."),
              PageBody(
                  bodyText:
                      "Rata-rata menarkus terjadi di usia 11 sampai 13 tahun. Umumnya, satu siklus menstruasi memiliki durasi 25 sampai 32 hari. Apabila jarak menstruasimu tidak masuk di rentang tersebut, tidak perlu khawatir. Umumnya, remaja memiliki siklus menstruasi yang kadang tidak teratur."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter1Page8 extends StatelessWidget {
  const Chapter1Page8();
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
                          "'Puber pada perempuan diawali dengan menstruasi.'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Puber pada Perempuan diawali dengan pertumbuhan badan yang cepat/growth spurt dan munculnya tanda perkembangan sekunder lain.\n\nMenstruasi/haid merupakan bagian dari akhir masa pubertas pada Perempuan.",
                      patternFeedback:
                          "Menstruasi/haid merupakan bagian dari akhir masa pubertas pada Perempuan."),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter1Page9 extends StatelessWidget {
  const Chapter1Page9();
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
                          "'Hormon puber bikin remaja moody dan gampang emosi'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Fakta",
                      feedback:
                          "Perubahan hormonal pada masa puber dapat mempengaruhi emosional, sehingga muncul fenomena swing mood",
                      patternFeedback: "swing mood"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter1Page10 extends StatelessWidget {
  const Chapter1Page10();
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
                          "'Bahan kimia tertentu bikin pubertas makin cepat'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Fakta",
                      feedback:
                          "Beberapa bahan kimia yang mempengaruhi hormon seorang dapat menyebabkan mempercepat mulainya masa puber",
                      patternFeedback:
                          "dapat menyebabkan mempercepat mulainya masa puber"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter1Page11 extends StatelessWidget {
  const Chapter1Page11();
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
                          "'Obesitas bikin puber makin cepat'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Fakta",
                      feedback:
                          "Kegemukan dapat mempengaruhi kadar hormon seorang, sehingga menyebabkan masa pubertas dini",
                      patternFeedback:
                          "Kegemukan dapat mempengaruhi kadar hormon seorang"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter1Page12 extends StatelessWidget {
  const Chapter1Page12();
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
                          "'Puber gak bikin perempuan bau badan kayak laki-laki'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Fakta",
                      feedback:
                          "Perubahan hormon pada masa puber dapat menyebabkan produksi keringat dan minyak berlebih.\n\nKondisi ini dapat menyebabkan timbulnya bau badan seseorang",
                      patternFeedback: "produksi keringat dan minyak berlebih"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Chapter1Page13 extends StatelessWidget {
  const Chapter1Page13();
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
                          "'Seseorang tidak boleh menyentuh acar atau makan nanas saat menstruasi'"),
                  Divider(thickness: 3, endIndent: 75, color: Colors.grey[900]),
                  const PageButton(
                      jawabanBenar: "Mitos",
                      feedback:
                          "Perempuan yang sedang menstruasi tidak dilarang untuk makan acar atau nanas.\n\nTapi hati-hati jangan makan terlalu banyak, kalau tidak mau sakit perut.",
                      patternFeedback: "tidak dilarang"),
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
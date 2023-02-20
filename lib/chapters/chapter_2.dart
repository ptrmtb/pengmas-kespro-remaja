import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_2 = const [
  Chapter2Page1(),
  Chapter2Page2(),
  Chapter2Page3(),
  Chapter2Page4(),
  Chapter2Page5(),
  Chapter2Page6(),
  Chapter2Page7(),
  Chapter2Page8(),
  Chapter2Page9(),
  Chapter2Page10(),
  Chapter2Page11(),
  Chapter2Page12(),
  Chapter2Page13(),
  Chapter2Page14(),
  Chapter2Page15(),
  Chapter2Page16(),
];

class Chapter2 extends StatefulWidget {
  const Chapter2();

  @override
  State<Chapter2> createState() => _Chapter2State();
}

class _Chapter2State extends State<Chapter2> {
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
        itemBuilder: (context, index) => CHAPTER_2[index],
        itemCount: CHAPTER_2.length,
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
            "PHBS untuk Kespro Perempuan".toUpperCase(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_2.length.toDouble(),
            backgroundColor: Colors.white,
            color: Colors.pink[200],
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

class Chapter2Page1 extends StatelessWidget {
  const Chapter2Page1();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Definisi"),
              PageBody(
                  bodyText:
                      "Perilaku Hidup Bersih dan Sehat (PHBS) adalah Semua perilaku kesehatan yang dilakukan karena kesadaran pribadi sehingga keluarga dan seluruh anggotanya mampu menolong diri sendiri di bidang kesehatan serta memiliki peran aktif dalam aktivitas masyarakat."),
              PageImage(
                  imagePath:
                      "assets/images/c2p1.png",
                  imageCaption: "Perilaku Hidup Bersih dan Sehat (PHBS)"),
              PageBody(
                  bodyText:
                      "Adanya edukasi PHBS diharapkan akan merubah sikap dan perilaku di kehidupan sehari-hari. Pertambahan pengetahuan ini akan meningkatkan kesehatan individu dan masyarkat secara keseluruhan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page2 extends StatelessWidget {
  const Chapter2Page2();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "PHBS di Sekolah"),
              PageImage(
                  imagePath:
                      "assets/images/c2p2.png",
                  imageCaption: "Contoh promosi kesehatan PHBS di Sekolah"),
              PageBody(
                  bodyText:
                      "PHBS juga dipraktikkan di sekolah loh.\n\nPHBS di sekolah didefinisikan sebagai sekumpulan perilaku yang dipraktikkan oleh peserta didik, guru dan masyarakat lingkungan sekolah atas dasar kesadaran sebagai hasil pembelajaran, sehingga secara mandiri mampu mencegah penyakit, meningkatkan kesehatannya, serta berperan aktif dalam mewujudkan lingkungan sehat."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page3 extends StatelessWidget {
  const Chapter2Page3();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(
                  headerText: "Cuci Tangan dengan Sabun dan Air Mengalir"),
              PageBody(
                  bodyText:
                      "Jika tangan belum dibersihkan dari kuman dan seseorang menyentuh organ reproduksinya, kuman yang menempel di tangan akan berpindah ke organ reproduksi. Bahaya bukan?"),
              PageImage(
                  imagePath:
                      "assets/images/c2p3.jpg",
                  imageCaption:
                      "Contoh jenis-jenis kuman yang biasa menempel di tangan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page4 extends StatelessWidget {
  const Chapter2Page4();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "6 Langkah Cuci Tangan"),
              PageBody(bodyText: "Sudahkah kamu melakukannya dengan benar?"),
              PageImage(
                  imagePath:
                      "assets/images/c2p4.jpg",
                  imageCaption: "Infografis 6 langkah mencuci tangan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page5 extends StatelessWidget {
  const Chapter2Page5();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "5 Momen Cuci Tangan"),
              PageBody(bodyText: "Kapan saja ya harus cuci tangan?"),
              PageImage(
                  imagePath:
                      "assets/images/c2p5.jpg",
                  imageCaption:
                      "Infografis 5 momen wajib cuci tangan pakai sabun."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page6 extends StatelessWidget {
  const Chapter2Page6();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(
                  headerText:
                      "Memakai pakaian dalam dari bahan yang mudah menyerap keringat"),
              PageBody(
                  bodyText:
                      "Memakai pakaian dalam dari bahan yang mudah menyerap keringat membuat sirkulasi udara di dalam organ reproduksi menjadi lancar. Celana dalam yang lembab mempermudah pertumbuhan jamur dan bakteri."),
              PageImage(
                  imagePath:
                      "assets/images/c2p6.jpg",
                  imageCaption:
                      "Katun adalah salah satu bahan pakaian dalam yang mudah menyerap keringat."),
              PageBody(
                  bodyText:
                      "Contoh dari pakaian dalam yang mudah menyerap keringat adalah bahan katun.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page7 extends StatelessWidget {
  const Chapter2Page7();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Mengganti pakaian dalam"),
              PageBody(
                  bodyText:
                      "Pakaian dalam harus diganti setidaknya 2 kali dalam sehari. Pakaian dalam juga harus segera diganti apabila habis berolahraga atau setelah beraktivitas yang mengeluarkan banyak keringat."),
              PageImage(
                  imagePath:
                      "assets/images/c2p7.jpg",
                  imageCaption:
                      "Rajin mengganti pakaian dalam merupakan salah satu kiat praktis PHBS."),
              PageBody(
                  bodyText:
                      "Alokasikan dana untuk mengganti pakaian dalam: yang sudah sangat lama (bertahun-tahun dipakai), kesempitan, kendur, warnanya sudah memudar, dan tak lagi nyaman digunakan.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page8 extends StatelessWidget {
  const Chapter2Page8();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Cara mencuci pakaian dalam"),
              PageBody(
                  bodyText:
                      "Segera cuci pakaian dalam setelah dipakai. Kalau tidak, kuman bisa berkembang biak"),
              PageImage(
                  imagePath:
                      'assets/images/c2p8.jpg',
                  imageCaption: "Cara mencuci pakaian dalam dengan benar."),
              PageBody(
                  bodyText:
                      "Dalam mencuci pakaian dalam, pakaian dalam sebaiknya dicuci terpisah dari pakaian lain. Pakaian dalam harus dicuci menggunakan sabun dan dibilas menggunakan air bersih, baru setelah itu dikeringkan dan dijemur hingga kering. Lipat dan simpan pakaian dalam yang sudah bersih di dalam lemari/tempat khusus."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page9 extends StatelessWidget {
  const Chapter2Page9();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Membasuh organ reproduksi dengan benar"),
              PageBody(bodyText: "Yang benar adalah dari depan ke belakang."),
              PageImage(
                  imagePath:
                      "assets/images/c2p9.jpg",
                  imageCaption: "Cara basuh organ reproduksi penting agar terhindar dari infeksi."),
              PageBody(
                  bodyText:
                      "Apabila sebaliknya, kotoran dan kuman dari anus akan terbawa menuju ke organ reproduksi\n\nBilas dengan air bersih setiap kali melakukan BAK maupun BAB."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page10 extends StatelessWidget {
  const Chapter2Page10();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Mengeringkan organ reproduksi"),
              PageImage(
                  imagePath:
                      "assets/images/c2p10.png",
                  imageCaption: "Gunakan handuk bersih atau tissue khusus yang tidak mengandung zat pemutih untuk mengeringkan organ reproduksi."),
              PageBody(
                  bodyText:
                      "Setelah BAK/BAB, basuh organ reproduksi dengan air bersih dan keringkan hingga benar-benar kering. Gunakan handuk yang lembut, kering, bersih, dan tidak berbau atau lembab. Atau bisa juga digunakan tissue khusus yang tidak mengandung zat pemutih yang bisa menempel di organ reproduksi."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page11 extends StatelessWidget {
  const Chapter2Page11();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: [
              const PageHeader(
                  headerText: "Menjaga kebersihan area reproduksi"),
              PageContainer(
                containerChild: EasyRichText(
                  "Jika rambut di area alat kelamin sudah memanjang, cukur supaya tetap pendek dan terhindar dari tumbuhnya bakteri dan kutu (Phthirus pubis).",
                  defaultStyle: const TextStyle(fontSize: 16, height: 1.8),
                  patternList: [
                    EasyRichTextPattern(
                      targetString: "Phthirus pubis",
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              const PageImage(
                  imagePath:
                      "assets/images/c2p11.jpg",
                  imageCaption: "Kutu dapat tumbuh pada rambut di organ reproduksi apabila tidak dibersihkan dengan benar."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page12 extends StatelessWidget {
  const Chapter2Page12();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Hindari kebiasaan berikut"),
              PageBody(
                  bodyText:
                      "Hindari penggunaan pakaian ketat berbahan panas dan kurang ventilasi udara. Selain itu, hindari juga penggunaan obat pembersih wanita, sebab dapat merangsang pertumbuhan bakteri dan jamur yang menyebabkan keputihan."),
              PageImage(
                  imagePath:
                      "assets/images/c2p12.png",
                  imageCaption: "Jangan gunakan pakaian ketat dan pembersih area kewanitaan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page13 extends StatelessWidget {
  const Chapter2Page13();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Konsumsi makanan sehat dan bergizi"),
              PageImage(
                  imagePath:
                      "assets/images/c2p13.jpg",
                  imageCaption: "PHBS merupakan gaya hidup yang berkelanjutan."),
              PageBody(
                  bodyText:
                      "Ingat selalu:\n\nKonsumsi buah dan sayur.\nHindari minuman beralkohol, rokok, dan narkoba.\nKurangi konsumsi makanan berpengawet dan mengandung gula.")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page14 extends StatelessWidget {
  const Chapter2Page14();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Rutin Berolahraga"),
              PageImage(
                  imagePath:
                      "assets/images/c2p14.png",
                  imageCaption: "Banyak manfaat yang didapat dari berolahraga."),
              PageBody(
                  bodyText:
                      "Berolahraga setidaknya 30 menit setiap hari, minimal 3x seminggu teruji meningkatkan konsentrasi, kebugaran dan mencegah penyakit."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page15 extends StatelessWidget {
  const Chapter2Page15();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(
                  headerText: "Kebersihan dan kesehatan saat menstruasi"),
              PageBody(
                  bodyText:
                      "Saat menstruasi kelenjar keringat akan memproduksi keringat yang banyak, maka dari itu mandi dan ganti pakaian secara teratur.\n\nRajinlah mengganti pembalut setiap 3--6 jam. Darah menstruasi membuat kuman mudah berkembang biak, yang dapat menyebabkan infeksi organ reproduksi.\n\nGunakanlah pembalut dengan tekstur yang lembut dan kering agar mencegah iritasi."),
              PageImage(
                  imagePath:
                      "assets/images/c2p15.png",
                  imageCaption: "Cara menggunakan pembalut."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter2Page16 extends StatelessWidget {
  const Chapter2Page16();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Cara membuang pembalut sekali pakai"),
              PageImage(
                  imagePath:
                      "assets/images/c2p16.png",
                  imageCaption: "Cara membuang pembalut bekas pakai."),
              PageBody(
                  bodyText:
                      "Jagalah kebersihan, jangan membuang pembalut & tissue ke lubang kloset ya!"),
            ],
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

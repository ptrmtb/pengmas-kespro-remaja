import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_4 = const [
  Chapter4Page1(),
  Chapter4Page2(),
  Chapter4Page3(),
  Chapter4Page4(),
  Chapter4Page5(),
  Chapter4Page6(),
  Chapter4Page7(),
  Chapter4Page8(),
  Chapter4Page9(),
  Chapter4Page10(),
  Chapter4Page11(),
  Chapter4Page12(),
  Chapter4Page13(),
  Chapter4Page14(),
  Chapter4Page15(),
];

class Chapter4 extends StatefulWidget {
  const Chapter4();

  @override
  State<Chapter4> createState() => _Chapter4State();
}

class _Chapter4State extends State<Chapter4> {
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
        itemBuilder: (context, index) => CHAPTER_4[index],
        itemCount: CHAPTER_4.length,
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
            "PHBS untuk Kespro Laki-laki".toUpperCase(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_4.length.toDouble(),
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

class Chapter4Page1 extends StatelessWidget {
  const Chapter4Page1();
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
                      "assets/images/c4p1.png",
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

class Chapter4Page2 extends StatelessWidget {
  const Chapter4Page2();
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
                      "assets/images/c4p2.jpg",
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

class Chapter4Page3 extends StatelessWidget {
  const Chapter4Page3();
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
                      "assets/images/c4p3.jpg",
                  imageCaption:
                      "Contoh jenis-jenis kuman yang biasa menempel di tangan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page4 extends StatelessWidget {
  const Chapter4Page4();
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
                      "assets/images/c4p4.jpg",
                  imageCaption: "Infografis 6 langkah mencuci tangan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page5 extends StatelessWidget {
  const Chapter4Page5();
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
                      "assets/images/c4p5.jpg",
                  imageCaption:
                      "Infografis 5 momen wajib cuci tangan pakai sabun."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page6 extends StatelessWidget {
  const Chapter4Page6();
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
                      "assets/images/c4p6.png",
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

class Chapter4Page7 extends StatelessWidget {
  const Chapter4Page7();
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
                      "assets/images/c4p7.png",
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

class Chapter4Page8 extends StatelessWidget {
  const Chapter4Page8();
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
                      'assets/images/c4p8.png',
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

class Chapter4Page9 extends StatelessWidget {
  const Chapter4Page9();
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
                      "assets/images/c4p9.png",
                  imageCaption:
                      "Cara basuh organ reproduksi penting agar terhindar dari infeksi."),
              PageBody(
                  bodyText:
                      "Apabila sebaliknya, kotoran dan kuman dari anus akan terbawa menuju ke organ reproduksi\n\nBilas dengan air bersih setiap kali melakukan BAK maupun BAB.\n\nUntuk laki-laki yang belum atau tidak disunat wajib membersihkan bagian dalam kulup yaitu kepala penis dalam sampai bersih agar terhindar dari kanker."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page10 extends StatelessWidget {
  const Chapter4Page10();
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
                      "assets/images/c4p10.png",
                  imageCaption:
                      "Gunakan handuk bersih atau tissue khusus yang tidak mengandung zat pemutih untuk mengeringkan organ reproduksi."),
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

class Chapter4Page11 extends StatelessWidget {
  const Chapter4Page11();
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
                      "assets/images/c4p11.jpg",
                  imageCaption:
                      "Kutu dapat tumbuh pada rambut di organ reproduksi apabila tidak dibersihkan dengan benar."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page12 extends StatelessWidget {
  const Chapter4Page12();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Melakukan khitan"),
              PageBody(
                  bodyText:
                      "Khitan membantu mengatasi penyakit tertentu seperti fimosis (kulit melekat kencang di kepala penis)."),
              PageImage(
                  imagePath:
                      "assets/images/c4p12.png",
                  imageCaption: "Khitan/sunat memiliki banyak manfaat."),
              PageBody(
                  bodyText:
                      "Sunat juga menurunkan risiko penularan penyakit menular seksual, mengurangi risiko terjadinya infeksi saluran kemih dan menurunkan risiko kanker penis.."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page13 extends StatelessWidget {
  const Chapter4Page13();
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
                      "assets/images/c4p13.png",
                  imageCaption:
                      "Jangan gunakan pakaian ketat atau memangku laptop di atas paha."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter4Page14 extends StatelessWidget {
  const Chapter4Page14();
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
                      "assets/images/c4p14.jpg",
                  imageCaption:
                      "PHBS merupakan gaya hidup yang berkelanjutan."),
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

class Chapter4Page15 extends StatelessWidget {
  const Chapter4Page15();
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
                      "assets/images/c4p15.png",
                  imageCaption:
                      "Banyak manfaat yang didapat dari berolahraga."),
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

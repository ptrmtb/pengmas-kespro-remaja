import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../building_blocks.dart';

var CHAPTER_5 = const [
  Chapter5Page1(),
  Chapter5Page2(),
  Chapter5Page3(),
  Chapter5Page4(),
  Chapter5Page5(),
  Chapter5Page6(),
  Chapter5Page7(),
  Chapter5Page8(),
  Chapter5Page9(),
  Chapter5Page10(),
  Chapter5Page11(),
  Chapter5Page12(),
  Chapter5Page13(),
  Chapter5Page14(),
  Chapter5Page15(),
  Chapter5Page16(),
  Chapter5Page17(),
  Chapter5Page18(),
  Chapter5Page19(),
  Chapter5Page20(),
  Chapter5Page21(),
  Chapter5Page22(),
  Chapter5Page23(),
  Chapter5Page24(),
  Chapter5Page25(),
  Chapter5Page26(),
  Chapter5Page27(),
  Chapter5Page28(),
  Chapter5Page29(),
  Chapter5Page30(),
  Chapter5Page31(),
  Chapter5Page32(),
];

class Chapter5 extends StatefulWidget {
  const Chapter5();

  @override
  State<Chapter5> createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
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
        itemBuilder: (context, index) => CHAPTER_5[index],
        itemCount: CHAPTER_5.length,
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
            "Keputihan & Infeksi Menular Seksual".toUpperCase(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: LinearProgressIndicator(
            value: _currentIndex / CHAPTER_5.length.toDouble(),
            backgroundColor: Colors.white,
            color: Colors.green[200],
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

class Chapter5Page1 extends StatelessWidget {
  const Chapter5Page1();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Pembahasan"),
              PageBody(bodyText: "Berikut merupakan pembahasan pada Bab ini."),
              PageImage(
                  imagePath:
                      "assets/images/c5p1.png",
                  imageCaption: "Topik yang akan dibahas"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page2 extends StatelessWidget {
  const Chapter5Page2();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Keputihan\n(fluor albus)"),
              PageBody(
                  bodyText:
                      "Keputihan adalah keluarnya cairan selain darah dari liang vagina di luar kebiasaan, baik berbau ataupun tidak, serta disertai rasa gatal setempat (Kusmiran, 2012)."),
              PageImage(
                  imagePath:
                      "assets/images/c5p2.jpg",
                  imageCaption: "Keputihan/fluor albus"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page3 extends StatelessWidget {
  const Chapter5Page3();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Keputihan normal"),
              PageImage(
                  imagePath:
                      "assets/images/c5p3.png",
                  imageCaption: "Jenis-jenis keputihan normal"),
              PageBody(
                  bodyText:
                      "Ciri-ciri keputihan normal:\n\nWarna dan konsistensi putih, sedikit berlendir (fase folikuler = awal menstruasi).\nBening, lengket (fase ovulasi).\nAgak kuning, lebih kental (fase luteal = akhir menstruasi)."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page4 extends StatelessWidget {
  const Chapter5Page4();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Keputihan normal"),
              PageImage(
                  imagePath:
                      "assets/images/c5p4.png",
                  imageCaption: "Momen keputihan normal dapat terjadi"),
              PageBody(bodyText: "Saat kadar hormon estrogen meningkat"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page5 extends StatelessWidget {
  const Chapter5Page5();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Keputihan normal"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p5.png",
                  imageCaption: "Karakteristik keputihan normal"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page6 extends StatelessWidget {
  const Chapter5Page6();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Keputihan abnormal"),
              PageBody(
                  bodyText:
                      "Ciri-ciri keputihan abnormal: \n\nGatal, disertai rasa nyeri, nyeri saat BAK, perdarahan antar periode menstruasi, nyeri panggul."),
              PageImage(
                  imagePath:
                      "assets/images/c5p6.png",
                  imageCaption: "Arti warna pada keputihan"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page7 extends StatelessWidget {
  const Chapter5Page7();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Penyebab keputihan abnormal"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p7.png",
                  imageCaption: "Keputihan abnormal dapat disebabkan oleh infeksi ataupun sumber non-infeksius."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page8 extends StatelessWidget {
  const Chapter5Page8();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Penyebab keputihan abnormal"),
              PageBody(
                  bodyText:
                      "Terdapat 3 agen infeksi utama pada keputihan: bakteri, parasit, dan jamur."),
              PageImage(
                  imagePath:
                      "assets/images/c5p8.png",
                  imageCaption: "Tiga agen infeksi utama pada keputihan."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page9 extends StatelessWidget {
  const Chapter5Page9();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Bacterial Vaginosis"),
              PageBody(
                  bodyText:
                      "Bacterial vaginosis adalah kondisi yang terjadi saat bakteri tertentu jumlahnya terlalu banyak di daerah kewanitaan (vagina)."),
              PageImage(
                  imagePath:
                      "assets/images/c5p9.png",
                  imageCaption: "Penjelasan tentang bakterial vaginosis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page10 extends StatelessWidget {
  const Chapter5Page10();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Bacterial Vaginosis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p10.png",
                  imageCaption: "Gambar keputihan pada BV."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page11 extends StatelessWidget {
  const Chapter5Page11();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Bacterial Vaginosis"),
              PageBody(
                  bodyText:
                      ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p11.jpg",
                  imageCaption: "Gambaran ketidakseimbangan jumlah bakteri di vagina pada BV."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page12 extends StatelessWidget {
  const Chapter5Page12();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: [
              const PageHeader(headerText: "Gonore"),
              PageContainer(
                containerChild: EasyRichText(
                  "Disebabkan oleh bakteri Neisseria gonorrhoeae.",
                  defaultStyle: const TextStyle(fontSize: 16, height: 1.8),
                  patternList: [
                    EasyRichTextPattern(
                      targetString: "Neisseria gonorrhoeae",
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              const PageImage(
                  imagePath:
                      "assets/images/c5p12.jpg",
                  imageCaption: "Karakteristik gonore."),
              const PageBody(
                  bodyText:
                      "Penularan:\nMelalui kontak seksual.\nBisa juga terjadi infeksi melalui ibu hamil ke bayi saat proses melahirkan. Gejala infeksi pada bayi baru lahir biasanya oftalmia neonatorum\n\nAwalnya tanpa gejala, selanjutnya (2-7 hari) muncul keluhan: keluarnya cairan dari vagina.\n\nBila tidak diobati, akan menyebabkan radang panggul, nyeri panggul dalam waktu lama, infertilitas (gangguan kesuburan).")
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page13 extends StatelessWidget {
  const Chapter5Page13();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Trikomoniasis"),
              PageBody(
                  bodyText:
                      "Infeksi disebabkan oleh parasit.\nInfeksi lebih sering terjadi pada wanita dan usia tua."),
              PageImage(
                  imagePath:
                      "assets/images/c5p13.png",
                  imageCaption: "Karakteristik penyakit trikomoniasis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page14 extends StatelessWidget {
  const Chapter5Page14();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Trikomoniasis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p14.png",
                  imageCaption: "Gambar keputihan pada trikomoniasis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page15 extends StatelessWidget {
  const Chapter5Page15();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Trikomoniasis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p15.png",
                  imageCaption: "Gambar penyebab trikomoniasis."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page16 extends StatelessWidget {
  const Chapter5Page16();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: [
              const PageHeader(headerText: "Vulvovaginal candidiasis"),
              PageContainer(
                containerChild: EasyRichText(
                  "Infeksi disebabkan oleh jamur yang disebut Candida.",
                  defaultStyle: const TextStyle(fontSize: 16, height: 1.8),
                  patternList: [
                    EasyRichTextPattern(
                      targetString: "Candida",
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              const PageImage(
                  imagePath:
                      "assets/images/c5p16.png",
                  imageCaption: "Karakteristik penyakit vulovaginal candidiasis"),
              const PageBody(
                  bodyText:
                      "Dalam jumlah normal, jamur tidak menyebabkan infeksi."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page17 extends StatelessWidget {
  const Chapter5Page17();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Vulvovaginal candidiasis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p17.png",
                  imageCaption: "Gambar keputihan pada VVC."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page18 extends StatelessWidget {
  const Chapter5Page18();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Vulvovaginal candidiasis"),
              PageImage(
                  imagePath:
                      "assets/images/c5p18.png",
                  imageCaption: "Gambaran Infeksi jamur di dinding vagina."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page19 extends StatelessWidget {
  const Chapter5Page19();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Pencegahan keputihan abnormal"),
              PageImage(
                  imagePath:
                      "assets/images/c5p19.jpg",
                  imageCaption: "Keputihan abnormal dapat dicegah dengan cara membersihkan organ kewanitaan dengan benar."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page20 extends StatelessWidget {
  const Chapter5Page20();
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
                      "Penyakit lainnya di kulit yang disebabkan oleh Jamur"),
              PageBody(
                  bodyText:
                      "Infeksi Jamur di kulit (Mikosis):\nInfeksi pada lapisan terluar, jaringan berkeratin seperti kulit, rambut, kuku, sering disebut Tinea atau ringworm (kurap)."),
              PageImage(
                  imagePath:
                      "assets/images/c5p20.png",
                  imageCaption: "Contoh-contoh mikosis"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page21 extends StatelessWidget {
  const Chapter5Page21();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Tinea kruris\n(jock itch)"),
              PageImage(
                  imagePath:
                      "assets/images/c5p21.jpg",
                  imageCaption: "Gambar manifestasi klinis Tinea kruris pda Laki-laki"),
              PageBody(
                  bodyText:
                      "Lokasi infeksi: lipat paha, skrotum. Banyak terjadi pada laki-laki.\nGejala: kulit kering, gatal."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page22 extends StatelessWidget {
  const Chapter5Page22();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Tinea korporis\n(Kurap)"),
              PageImage(
                  imagePath:
                      "assets/images/c5p22.png",
                  imageCaption: "Gambar manifestasi klinis Tinea korporis di punggung."),
              PageBody(
                  bodyText:
                      "Lokasi infeksi: kulit halus, tidak berambut.\nGejala: gatal, kemerahan di kulit dalam bentuk lenting-lenting."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page23 extends StatelessWidget {
  const Chapter5Page23();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Tinea kapitis"),
              PageImage(
                  imagePath:
                      "assets/images/c5p23.png",
                  imageCaption: "Gambar manifestasi klinis Tinea kapitis di kulit rambut."),
              PageBody(
                  bodyText:
                      "Lokasi infeksi: rambut kepala. Infeksi pada atas akar rambut.\nGejala: bercak kebotakan, bersisik, gatal."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page24 extends StatelessWidget {
  const Chapter5Page24();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Tinea pedis (Athlete’s foot)"),
              PageImage(
                  imagePath:
                      "assets/images/c5p24.png",
                  imageCaption: "Gambar manifestasi klinis Tinea pedis pada sela-sela jari kaki."),
              PageBody(
                  bodyText:
                      "Lokasi infeksi: sela-sela jari kaki. Gejala: pengelupasan, keretakan kulit dengan nyeri dan pruritus."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page25 extends StatelessWidget {
  const Chapter5Page25();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Tinea unguium"),
              PageImage(
                  imagePath:
                      "assets/images/c5p25.png",
                  imageCaption: "Gambar manifestasi klinis Tinea unguium pada kuku-kuku jari."),
              PageBody(
                  bodyText:
                      "Lokasi infeksi: kuku.\nGejala: kuku kuning, rapuh, tebal, mudah hancur."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page26 extends StatelessWidget {
  const Chapter5Page26();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Infeksi Menular Seksual (IMS)"),
              PageImage(
                  imagePath:
                      "assets/images/c5p26.png",
                  imageCaption: "Jenis IMS berdasarkan agen penyebarannya."),
              PageBody(
                  bodyText:
                      "Faktor penentu pentingnya penyebaran IMS yaitu pergaulan bebas dan pratik seksual yang melibatkan kontak antara berbagai “lubang” dan permukaan mukosa.\n\nContoh: penularan pada homoseksual dapat terjadi melalui hubungan seksual anal atau oral."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page27 extends StatelessWidget {
  const Chapter5Page27();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Sifilis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p27.png",
                  imageCaption: "Karakteristik penyakit sifilis"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page28 extends StatelessWidget {
  const Chapter5Page28();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Sifilis"),
              PageBody(bodyText: ""),
              PageImage(
                  imagePath:
                      "assets/images/c5p28.png",
                  imageCaption: "Gambar manifestasi klinis sifilis"),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page29 extends StatelessWidget {
  const Chapter5Page29();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Herpes Genitalis"),
              PageImage(
                  imagePath:
                      "assets/images/c5p29.png",
                  imageCaption: "Gambar manifestasi klinis herpes genitalis pada kulit"),
              PageBody(
                  bodyText:
                      "Disebabkan oleh virus Herpes simplex virus 2 (HSV-2). Penularan melalui kontak seksual. Infeksi HSV-2 dapat sebabkan peningkatan risiko terjangkit HIV.\n\nGejala: lenting-lenting di vagina, kadang demam, sakit kepala, lemas nyeri saat BAK."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page30 extends StatelessWidget {
  const Chapter5Page30();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Infeksi Human Papilomavirus"),
              PageImage(
                  imagePath:
                      "assets/images/c5p30.png",
                  imageCaption: "Gambar manifestasi klinis HPV pada kulit."),
              PageBody(
                  bodyText:
                      "Disebabkan oleh virus Human Papilomavirus (HPV). Penularan secara seksual. Infeksi HPV berhubungan dengan risiko kanker serviks.\n\nGejala: kutil kelamin pada daerah vagina dan sekitar dubur."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page31 extends StatelessWidget {
  const Chapter5Page31();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Human Immunodeficiency Virus (HIV)"),
              PageImage(
                  imagePath:
                      "assets/images/c5p31.png",
                  imageCaption: "Atas: moda transmisi HIV.\nBawah: HIV tidak menyebar melalui tindakan tersebut."),
              PageBody(
                  bodyText:
                      "Penyebab virus, Human Immunodeficiency Virus.\nPenularan sesuai gambar di atas."),
            ],
          ),
        ),
      ),
    );
  }
}

class Chapter5Page32 extends StatelessWidget {
  const Chapter5Page32();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: const [
              PageHeader(headerText: "Human Immunodeficiency Virus (HIV)"),
              PageBody(bodyText: "AIDS (Acquired Immunodeficiency Syndrome): gejala-gejala yang menunjukkan infeksi terkait penurunan sistem imun tubuh; termasuk infeksi syaraf pusat, kejang, tidak sadarkan diri."),
              PageImage(
                  imagePath:
                      "assets/images/c5p32.png",
                  imageCaption: "Gejala yang biasanya disebabkan oleh HIV pada AIDS."),
              PageBody(
                  bodyText:
                      "Gejala awal: demam, lemas, ruam di kulit dan pembesaran kelenjar. Gejala lanjutan: penurunan berat badan, infeksi jamur di mulut, diare kronik."),
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

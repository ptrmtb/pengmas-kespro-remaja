import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chapters/chapter_1.dart';
import 'chapters/chapter_2.dart';
import 'chapters/chapter_3.dart';
import 'chapters/chapter_4.dart';
import 'chapters/chapter_5.dart';
import 'chapters/chapter_6.dart';
import 'chapters/chapter_kuis.dart';

var listOfChapters = const [
  Chapter1(),
  Chapter2(),
  Chapter3(),
  Chapter4(),
  Chapter5(),
  ChapterKuis(),
];

class Homepage extends StatelessWidget {
  const Homepage();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 175,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Image.asset("assets/images/bannerFKUI.png"),
            ),
            Flexible(
                flex: 3,
                child: Column(
                  children: const [
                    FittedBox(
                      child: Text("Program Pengabdian Masyarakat"),
                    ),
                    FittedBox(
                      child: Text(
                          "Departemen Mikrobiologi Klinik &\nDepartemen Parasitologi\nFakultas Kedokteran Universitas Indonesia"),
                    ),
                    FittedBox(
                      child: Text(
                        "\nKesehatan Reproduksi Remaja dan \nPerilaku Hidup Bersih Sehat (PHBS)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          ],
        ),
        centerTitle: true,
        titleTextStyle: GoogleFonts.raleway(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 24.0,
              letterSpacing: 5),
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Flexible(
                  flex: 11,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    childAspectRatio: 1.3,
                    primary: false,
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: const <Widget>[
                      KotakGrid(
                        index: 0,
                        path: "assets/images/kotakGrid0.png",
                        chapterTitle: "Kesehatan Reproduksi Remaja Perempuan",
                      ),
                      KotakGrid(
                          index: 1,
                          path: "assets/images/kotakGrid1.png",
                          chapterTitle: "PHBS untuk Kespro Perempuan"),
                      KotakGrid(
                          index: 2,
                          path: "assets/images/kotakGrid2.png",
                          chapterTitle:
                              "Kesehatan Reproduksi Remaja Laki-Laki"),
                      KotakGrid(
                          index: 3,
                          path: "assets/images/kotakGrid3.png",
                          chapterTitle: "PHBS untuk Kespro Laki-Laki"),
                      KotakGrid(
                          index: 4,
                          path: "assets/images/kotakGrid4.png",
                          chapterTitle: "Keputihan & Infeksi Menular Seksual"),
                      KotakGrid(
                          index: 5,
                          path: "assets/images/kotakGrid5.png",
                          chapterTitle: "Seberapa paham kamu?"),
                    ],
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Chapter6())));
                      },
                      child: const Text("Tentang Tim Pengabdi"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KotakGrid extends StatelessWidget {
  final String path;
  final String chapterTitle;
  final int index;
  const KotakGrid(
      {required this.path, required this.chapterTitle, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => listOfChapters[index],
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 3.0,
                )
              ],
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(path),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black45,
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: 5.0,
            ),
            child: Text(
              chapterTitle,
              style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageFooter extends StatelessWidget {
  const PageFooter();
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Text(
        "Hak Cipta Fakultas Kedokteran Universitas Indonesia, 2022",
        style: TextStyle(fontSize: 10, height: 1.8),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  final String headerText;
  const PageHeader({required this.headerText});
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          headerText,
          textAlign: TextAlign.left,
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontSize: 36.0)),
        ));
  }
}

class PageImage extends StatelessWidget {
  final String imagePath;
  final String imageCaption;
  const PageImage({required this.imagePath, required this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0, top: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.black12,
              width: 1.0,
              strokeAlign: BorderSide.strokeAlignCenter),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(color: Colors.blueGrey, blurRadius: 20.0)
          ]),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset(imagePath, fit: BoxFit.fitWidth),
          const Divider(
            height: 10,
          ),
          Text(
            imageCaption,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

class PageBody extends StatelessWidget {
  final String bodyText;
  const PageBody({required this.bodyText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        bodyText,
        style: const TextStyle(fontSize: 16, height: 1.8),
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  final Widget containerChild;
  const PageContainer({required this.containerChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: containerChild,
    );
  }
}

class ButtonWithExpanded extends StatelessWidget {
  final String judulButton;
  final String jawabanBenar;
  final String feedback;
  final String patternFeedback;

  const ButtonWithExpanded(
      {required this.judulButton,
      required this.jawabanBenar,
      this.feedback = "",
      this.patternFeedback = ""});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ElevatedButton(
        onPressed: () => _dialogueBuilder(context),
        style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.raleway(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
            alignment: Alignment.center,
            backgroundColor:
                (judulButton == 'Mitos') ? Colors.green[900] : Colors.cyan[700],
            minimumSize: const Size.fromHeight(60),
            foregroundColor: Colors.white),
        child: Center(
          child: Text(
            judulButton,
          ),
        ),
      ),
    );
  }

  Future<void> _dialogueBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: ((BuildContext context) {
        return AlertDialog(
          title: _judulDialog(),
          content: _kontenDialog(),
          // Icon(Icons.check_circle_outline_outlined,size: 124.0, color: Colors.green,),
          // content: _kontenDialog("Puber pada Perempuan diawali dengan pertumbuhan badan yang cepat/growth spurt dan munculnya tanda perkembangan sekunder lain. Menstruasi/haid merupakan bagian dari akhir masa pubertas pada Perempuan"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            )
          ],
        );
      }),
    );
  }

  Widget _judulDialog() {
    if (judulButton == jawabanBenar) {
      return Text(
        "Jawaban Anda benar!",
        style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        "Masih belum tepat..",
        style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
  }

  Widget _kontenDialog() {
    return judulButton == jawabanBenar
        ? const Icon(
            Icons.check_circle_outline_outlined,
            size: 124.0,
            color: Colors.green,
          )
        : Column(
          children: [
            EasyRichText(
                feedback,
                defaultStyle: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
                patternList: [
                  EasyRichTextPattern(
                    targetString: patternFeedback,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset("assets/images/jawabanBelumBenar.png", height: 220,)
          ],
        );
  }
}

class PageButton extends StatelessWidget {
  final String jawabanBenar;
  final String feedback;
  final String patternFeedback;

  const PageButton(
      {required this.jawabanBenar,
      required this.feedback,
      required this.patternFeedback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30, top: 30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 250),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                  "assets/images/mitosAtauFakta.png"),
            ),
          ),
          Row(
            children: [
              const Spacer(flex: 1),
              ButtonWithExpanded(
                judulButton: "Mitos",
                jawabanBenar: jawabanBenar,
                feedback: feedback,
                patternFeedback: patternFeedback,
              ),
              const Spacer(flex: 2),
              ButtonWithExpanded(
                  judulButton: "Fakta",
                  jawabanBenar: jawabanBenar,
                  feedback: feedback,
                  patternFeedback: patternFeedback),
              const Spacer(flex: 1),
            ],
          ),
        ],
      ),
    );
  }
}

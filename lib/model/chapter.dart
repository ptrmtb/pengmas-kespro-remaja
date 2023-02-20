import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageModel extends StatelessWidget {
  final String headerText;
  final String bodyText1;
  final String imagePath;
  final String bodyText2;

  const PageModel({required this.headerText, required this.bodyText1, required this.imagePath, required this.bodyText2});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            child: Column(
              children: [PageHeader(headerText: headerText), PageBody(bodyText: bodyText1), PageImage(imagePath: imagePath), PageBody(bodyText: bodyText2)],
            ),
          )),
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
  const PageImage({required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          Image.network(imagePath, fit: BoxFit.fitWidth),
          const Divider(
            height: 10,
          ),
          const Text(
            "Ini adalah keterangan gambar. Ini adalah keterangan gambar. Ini adalah keterangan gambar. Ini adalah keterangan gambar.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.black12,
              width: 1.0,
              strokeAlign: BorderSide.strokeAlignCenter),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [const BoxShadow(color: Colors.blueGrey, blurRadius: 20.0)]),
      padding: const EdgeInsets.all(10.0),
    );
  }
}

class PageBody extends StatelessWidget {
  final String bodyText;
  const PageBody({required this.bodyText});
  @override
  Widget build(BuildContext) {
    return Container(padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        bodyText,
        style: const TextStyle(fontSize: 20, height: 1.8),
      ),
    );
  }
}
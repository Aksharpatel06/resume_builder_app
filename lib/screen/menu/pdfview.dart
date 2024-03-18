import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder_app/screen/pdf.dart';

class pdfpreview extends StatefulWidget {
  const pdfpreview({super.key});

  @override
  State<pdfpreview> createState() => _pdfpreviewState();
}

class _pdfpreviewState extends State<pdfpreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => genrate(),
      ),
    );
  }
}

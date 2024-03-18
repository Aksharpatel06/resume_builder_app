import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;

import 'package:printing/printing.dart';
import 'package:resume_builder_app/screen/menu/personal_infomation.dart';
import '../utils/list.dart';

class pdf extends StatefulWidget {
   pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: 530,
          child: Stack(children: [
            Image.asset('asset/image/background.png'),
            Row(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 50),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border:
                                  Border.all(color: Colors.white, width: 5)),
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              child: Image(
                                image: FileImage(l1[0]['img']),
                                fit: BoxFit.fill,
                              )),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Phone:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text('${l1[0]['phone']}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    color: Colors.black))
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Email:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(l1[0]['emailaddress'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    color: Colors.black))
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Nationality:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(l1[0]['nationality'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    color: Colors.black))
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'DOB:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(l1[0]['dateofbirth'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    color: Colors.black))
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gender:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(l1[0]['gender'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6,
                                    color: Colors.black))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'skills',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(l1[5].length,
                                (index) => skill(l1[5][index], index))),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Language',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(l1[8].length,
                                (index) => skill(l1[8][index], index))),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Hobbies',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(l1[6].length,
                                (index) => skill(l1[6][index], index)))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 60, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          l1[0]['firstname'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        Text(l1[0]['lastname'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black)),
                      ],
                    ),
                    Text(
                      l1[0]['profession'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    (l1[1] == null)
                        ? Container()
                        : Container(
                            width: 190,
                            child: Text(
                              l1[1],
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 7,
                                  color: Colors.black),
                            ),
                          ),
                    const SizedBox(height: 30),
                    Text(
                      'Experience',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                l1[3]['jobtitle'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 6,
                                    color: Colors.black),
                              ),
                              Text(
                                l1[3]['companyname'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 6,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 135),
                        Text('${l1[3]['startyear']} - ${l1[3]['endyear']}',
                          style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 6,
                                    color: Colors.blue.shade200),
                              ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Education',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              l1[2]['schoolname'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(
                              l1[2]['degree'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(width: 115),
                        Text('${l1[2]['startyear']} - ${l1[2]['endyear']}',textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 6,
                              color: Colors.blue.shade200),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Project details',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      l1[7]['name'],
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 6,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Publication',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              l1[10]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(
                              l1[10]['author'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(width: 130),
                        Text(
                          l1[10]['date'],
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 6,
                              color: Colors.blue.shade200),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Achievement',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      l1[9]['name'],
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 6,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reference',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              l1[4]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(
                              l1[4]['jobtitle'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text('* ${l1[4]['email']}',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 6,
                        color: Colors.black),),
                    Text('* ${l1[4]['companyname']}',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 6,
                        color: Colors.black),),
                    Text('* ${l1[4]['phone']}',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 6,
                        color: Colors.black),)
                  ],
                ),
              ),
            ])
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          });
          Navigator.of(context).pushNamed('/pdfpriveiw');
        },
        child: Icon(Icons.picture_as_pdf),
      ),
    );
  }
}

Widget skill(String? name, int index) {
  return (index < 5)
      ? Text(
          name!,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 6, color: Colors.black),
        )
      : Container();
}
Future<Uint8List> genrate()
async {
  final pdf = pd.Document();
  final img = await rootBundle.load('asset/image/background.png');
  final imageBytes = img.buffer.asUint8List();
  final image = pd.MemoryImage(imgpath!.readAsBytesSync());

  pdf.addPage(pd.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pd.Context context) {
        return  pd.Stack(children: [
            pd.Image(
              pd.MemoryImage(imageBytes),fit: pd.BoxFit.cover,
            ),
            pd.Row(children: [
              pd.Center(
                child: pd.Padding(
                  padding:
                  const pd.EdgeInsets.only(left: 25.0, top: 50),
                  child: pd.Column(
                      crossAxisAlignment:
                      pd.CrossAxisAlignment.start,
                      children: [
                        pd.Container(
                          height: 100,
                          width: 100,
                          decoration: pd.BoxDecoration(
                              shape: pd.BoxShape.circle,
                              color: PdfColors.black,
                              border: pd.Border.all(
                                  color: PdfColors.white,
                                  width: 5)),
                          child: pd.ClipRRect(
                            horizontalRadius: 60,
                              verticalRadius: 60,
                              child: pd.Image(image,
                                  fit: pd.BoxFit.cover)),
                        ),
                        pd.SizedBox(height: 25),
                        pd.Text(
                          'Contact',
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.bold,
                              fontSize: 10,
                              color: PdfColors.black),
                        ),
                        pd.SizedBox(
                          height: 5,
                        ),
                        pd.Row(
                          children: [
                            pd.Text(
                              'Phone:',
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.normal,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text('${l1[0]['phone']}',
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black))
                          ],
                        ),
                        pd.Row(
                          children: [
                            pd.Text(
                              'Email:',
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(l1[0]['emailaddress'],
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black))
                          ],
                        ),
                        pd.Row(
                          children: [
                            pd.Text(
                              'Nationality:',
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(l1[0]['nationality'],
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black))
                          ],
                        ),
                        pd.Row(
                          children: [
                            pd.Text(
                              'DOB:',
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(l1[0]['dateofbirth'],
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black))
                          ],
                        ),
                        pd.Row(
                          children: [
                            pd.Text(
                              'Gender:',
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(l1[0]['gender'],
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black))
                          ],
                        ),
                        pd.SizedBox(
                          height: 15,
                        ),
                        pd.Text(
                          'skills',
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.bold,
                              fontSize: 10,
                              color: PdfColors.black),
                        ),
                        pd.SizedBox(
                          height: 5,
                        ),
                        pd.Column(
                            crossAxisAlignment:
                            pd.CrossAxisAlignment.start,
                            children: List.generate(
                                l1[5].length,
                                    (index) => (index > 5)
                                    ? pd.Text(
                                  l1[5][index],
                                  style: pd.TextStyle(
                                      fontWeight: pd
                                          .FontWeight.normal,
                                      fontSize: 6,
                                      color: PdfColors.black),
                                )
                                    : pd.Container())),
                        pd.SizedBox(
                          height: 15,
                        ),
                        pd.Text(
                          'Language',
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.bold,
                              fontSize: 10,
                              color: PdfColors.black),
                        ),
                        pd.SizedBox(
                          height: 5,
                        ),
                        pd.Column(
                            crossAxisAlignment: pd.CrossAxisAlignment.start,
                            children: List.generate(l1[8].length,
                                    (index) => (index > 5)
                                    ? pd.Text(
                                  l1[8][index],
                                  style: pd.TextStyle(
                                      fontWeight: pd
                                          .FontWeight.normal,
                                      fontSize: 6,
                                      color: PdfColors.black),
                                )
                                    : pd.Container())),
                        pd.SizedBox(
                          height: 15,
                        ),
                        pd.Text(
                          'Hobbies',
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.bold,
                              fontSize: 10,
                              color: PdfColors.black),
                        ),
                        pd.SizedBox(
                          height: 5,
                        ),
                        pd.Column(
                            crossAxisAlignment: pd.CrossAxisAlignment.start,
                            children: List.generate(l1[6].length,
                                    (index) => (index > 5)
                                    ? pd.Text(
                                  l1[6][index],
                                  style: pd.TextStyle(
                                      fontWeight: pd
                                          .FontWeight.normal,
                                      fontSize: 6,
                                      color: PdfColors.black),
                                )
                                    : pd.Container()))
                      ]),
                ),
              ),
              pd.Padding(
                padding: pd.EdgeInsets.only(
                    left: 40.0, top: 60, right: 5),
                child: pd.Column(
                  crossAxisAlignment: pd.CrossAxisAlignment.start,
                  children: [
                    pd.Row(
                      children: [
                        pd.Text(
                          l1[0]['firstname'],
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.bold,
                              fontSize: 14,
                              color: PdfColors.black),
                        ),
                        pd.SizedBox(width: 5),
                        pd.Text(l1[0]['lastname'],
                            style: pd.TextStyle(
                                fontWeight: pd.FontWeight.bold,
                                fontSize: 14,
                                color: PdfColors.black)),
                      ],
                    ),
                    pd.Text(
                      l1[0]['profession'],
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.normal,
                          fontSize: 11,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(height: 8),
                    if (l1[1] == null)
                      pd.Container()
                    else
                      pd.Container(
                        width: 190,
                        child: pd.Text(
                          l1[1],
                          overflow: pd.TextOverflow.clip,
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.normal,
                              fontSize: 7,
                              color: PdfColors.black),
                        ),
                      ),
                    pd.SizedBox(height: 30),
                    pd.Text(
                      'Experience',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 5,
                    ),
                    pd.Row(
                      children: [
                        pd.Container(
                          child: pd.Column(
                            children: [
                              pd.Text(
                                l1[3]['jobtitle'],
                                style: pd.TextStyle(
                                    fontWeight: pd.FontWeight.bold,
                                    fontSize: 6,
                                    color: PdfColors.black),
                              ),
                              pd.Text(
                                l1[3]['companyname'],
                                style: pd.TextStyle(
                                    fontWeight:
                                    pd.FontWeight.normal,
                                    fontSize: 6,
                                    color: PdfColors.black),
                              )
                            ],
                          ),
                        ),
                        pd.SizedBox(width: 135),
                        pd.Text(
                          '${l1[3]['startyear']} - ${l1[3]['endyear']}',
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.normal,
                              fontSize: 6,
                              color: PdfColors.blue200),
                        ),
                      ],
                    ),
                    pd.SizedBox(
                      height: 10,
                    ),
                    pd.Text(
                      'Education',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 5,
                    ),
                    pd.Row(
                      mainAxisAlignment:
                      pd.MainAxisAlignment.spaceBetween,
                      children: [
                        pd.Column(
                          children: [
                            pd.Text(
                              l1[2]['schoolname'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(
                              l1[2]['degree'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.normal,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            )
                          ],
                        ),
                        pd.SizedBox(width: 115),
                        pd.Text(
                          '${l1[2]['startyear']} - ${l1[2]['endyear']}',
                          textAlign: pd.TextAlign.end,
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.normal,
                              fontSize: 6,
                              color: PdfColors.blue200),
                        ),
                      ],
                    ),
                    pd.SizedBox(
                      height: 10,
                    ),
                    pd.Text(
                      'Project details',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 5,
                    ),
                    pd.Text(
                      l1[7]['name'],
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 6,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 10,
                    ),
                    pd.Text(
                      'Publication',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 5,
                    ),
                    pd.Row(
                      mainAxisAlignment:
                      pd.MainAxisAlignment.spaceBetween,
                      children: [
                        pd.Column(
                          children: [
                            pd.Text(
                              l1[10]['name'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(
                              l1[10]['author'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.normal,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            )
                          ],
                        ),
                        pd.SizedBox(width: 150),
                        pd.Text(
                          l1[10]['date'],
                          style: pd.TextStyle(
                              fontWeight: pd.FontWeight.normal,
                              fontSize: 6,
                              color: PdfColors.blue200),
                        )
                      ],
                    ),
                    pd.SizedBox(
                      height: 10,
                    ),
                    pd.Text(
                      'Achievement',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 5,
                    ),
                    pd.Text(
                      l1[9]['name'],
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 6,
                          color: PdfColors.black),
                    ),
                    pd.SizedBox(
                      height: 10,
                    ),
                    pd.Text(
                      'Reference',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.bold,
                          fontSize: 10,
                          color: PdfColors.black),
                    ),
                    pd.Row(
                      mainAxisAlignment:
                      pd.MainAxisAlignment.spaceBetween,
                      children: [
                        pd.Column(
                          children: [
                            pd.Text(
                              l1[4]['name'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.bold,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            ),
                            pd.Text(
                              l1[4]['jobtitle'],
                              style: pd.TextStyle(
                                  fontWeight: pd.FontWeight.normal,
                                  fontSize: 6,
                                  color: PdfColors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    pd.SizedBox(height: 5),
                    pd.Text(
                      '* ${l1[4]['email']}',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.normal,
                          fontSize: 6,
                          color: PdfColors.black),
                    ),
                    pd.Text(
                      '* ${l1[4]['companyname']}',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.normal,
                          fontSize: 6,
                          color: PdfColors.black),
                    ),
                    pd.Text(
                      '* ${l1[4]['phone']}',
                      style: pd.TextStyle(
                          fontWeight: pd.FontWeight.normal,
                          fontSize: 6,
                          color: PdfColors.black),
                    )
                  ],
                ),
              ),
            ])
          ]); // Center
      }));
  return await pdf.save();
}

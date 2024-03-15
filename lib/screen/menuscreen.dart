import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;

import 'package:printing/printing.dart';

import '../utils/list.dart';

class menuscreen extends StatefulWidget {
  const menuscreen({super.key});

  @override
  State<menuscreen> createState() => _menuscreenState();
}

class _menuscreenState extends State<menuscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          InkWell(
            onTap: () async {
              setState(() {
              });
              final pdf = pd.Document();
              final img = await rootBundle.load('asset/image/background.png');
              final imageBytes = img.buffer.asUint8List();
              print(l1[0]['img']);

              pdf.addPage(pd.Page(
                  pageFormat: PdfPageFormat.a4,
                  build: (pd.Context context) {
                    return pd.Stack(children: [
                      pd.Image(pd.MemoryImage(imageBytes),),
                    pd.Row(children: [
                        pd.Center(
                          child: pd.Column(
                              children: [
                            pd.Container(
                              height: 100,
                              width: 100,
                              decoration: pd.BoxDecoration(
                                  shape: pd.BoxShape.circle,
                                  color: PdfColors.white,
                                  border: pd.Border.all(color: PdfColors.black)),
                              // child: pd.Image(
                              //   pd.MemoryImage(
                              //     File(l1[0]['img']).readAsBytesSync(),
                              //   ),
                              // ),
                            ),
                          ]),
                        )
                      ])
                    ]); // Center
                  })); //

              await Printing.layoutPdf(
                  onLayout: (PdfPageFormat format) async => pdf.save()); // Page
            },
            child: Container(
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text(
                'view',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/person');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Personal Info',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/objective');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.flag,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Objective',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/education');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.school,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Education',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/skills');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.security,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Skills',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/experience');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.work,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/reference');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Reference',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 208.0),
                child: Text(
                  'More Sections',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/project');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Project',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/interests');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_events_outlined,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Interest',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/Language');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Language',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/achievement');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.stars,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Achievement',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/publication');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.feed,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Publication',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/ad');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.lyrics,
                      color: Colors.blue.shade900,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Additional Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

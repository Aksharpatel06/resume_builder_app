import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

bool isform = false;

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: Container(
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                'save',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          InkWell(
            onTap: () {
              setState(() {
                isform = true;
              });
            },
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: (isform) ? Color(0xff0a2663) : Colors.blue.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'Add Language  ',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          (isform)
              ? Container(
                  height: 590.3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      )
                    ],
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Column(
                        children: List.generate(
                            Languagebool.length, (index) => check(index))),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget check(int? index) {
    return CheckboxListTile(
      title: Text('${Languagenames[index!]}'),
      value: Languagebool[index!],
      onChanged: (value) {
        setState(() {
          Languagebool[index!] = value!;
          if (value == true) {
            Languagename.add(Languagenames[index]);
          } else {
            Languagename.remove(Languagenames[index]);
          }
        });
      },
    );
  }
}
List Languagename = [];

List Languagebool = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

List Languagenames = [
  'Afrikaans',
  'Aghem',
  'Akan',
  'Amharic',
  'Arabic',
  'Assamese',
  'Asu',
  'Asturian',
  'Azerbaijani',
  'Basaa',
  'Belarusian',
  'Bemba',
  'Bena',
  'Bulgarian',
  'Bambara',
  'Bangla',
  'Tibetan',
  'Breton',
  'Bodo',
  'Bosnian',
  'Catalan',
  'Chakma',
  'Chechen',
  'Cebuano',
  'Chiga',
  'Cherokee',
  'Central Kurdish',
  'Czech',
  'Welsh',
  'Danish',
  'Taita',
  'German',
  'Zarma',
  'Lower Sorbian',
  'Duala',
  'Jola-Fonyi',
  'Dzongkha',
  'Embu',
  'Ewe',
  'Greek',
  'English',
  'Esperanto',
  'Spanish',
  'Estonian',
  'Basque',
  'Ewondo',
  'Persian',
  'Fulah',
  'Finnish',
  'Filipino',
  'Faroese',
  'French',
  'Friulian',
  'Western Frisian',
  'Irish',
  'Scottish Gaelic',
  'Galician',
  'Swiss German',
  'Gujarati',
  'Gusii',
  'Romanian',
  'Rombo',
  'Russian',
  'Kinyarwanda',
  'Rwa',
  'Sakha',
  'Samburu',
  'Sangu',
  'Sindhi',
  'Northern Sami',
  'Sena',
  'Koyraboro Senni',
  'Sango',
  'Tachelhit',
  'Sinhala',
];

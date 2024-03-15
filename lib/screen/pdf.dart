import 'package:flutter/material.dart';

import '../utils/list.dart';

class pdf extends StatefulWidget {
  const pdf({super.key});

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
                            Text(l1[0]['phone'],
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
                              'chbja',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(width: 135),
                        Row(
                          children: [
                            Text(
                              'dagh',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.blue.shade200),
                            ),
                            Text(
                              ' - ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.blue.shade200),
                            ),
                            Text(
                              'dagh',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.blue.shade200),
                            ),
                          ],
                        )
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
                      'qdgah',
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
                              'qdgah',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(
                              'chbja',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(width: 150),
                        Text(
                          'dagh',
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
                      'qdgah',
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
                              'qdgah',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 6,
                                  color: Colors.black),
                            ),
                            Text(
                              'chbja',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 6,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text('* ehfbwd',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 6,
                        color: Colors.black),),
                    Text('* ehfbwd',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 6,
                        color: Colors.black),),
                    Text('* ehfbwd',style: TextStyle(
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

import 'package:flutter/material.dart';

class interests extends StatefulWidget {
  const interests({super.key});

  @override
  State<interests> createState() => _interestsState();
}

bool isform = false;

class _interestsState extends State<interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('interests'),
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
                    'Add interests  ',
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
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Column(
                        children: List.generate(
                            interestbool.length, (index) => check(index))),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
  Widget check(int? index) {
    return CheckboxListTile(
      title: Text('${interestsname[index!]}'),
      value: interestbool[index!],
      onChanged: (value) {
        setState(() {
          interestbool[index!] = value!;
          if (value == true) {
            interestname.add(interestsname[index]);
          } else {
            interestname.remove(interestsname[index]);
          }
        });
      },
    );
  }
}

List interestname = [];
List interestbool = [
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


List interestsname = [
  'Art',
  'Basketball',
  'Blogging',
  'Calligraphy',
  'Camping',
  'community involvement',
  'Cycling',
  'Dance',
  'Exploring other cultures',
  'Football',
  'Gardening',
  'Journaling',
  'Learning languages',
  'Listening to music',
  'Making music',
  'Marketing',
  'Mountain climbing',
  'Networking events',
  'Painting',
  'Photography',
  'Podcasting',
  'Public speaking',
  'Reading',
  'Sketching',
  'Sports',
  'Stand-up comedy',
  'Swimming',
  'Travel',
  'Volleyball',
  'Volunteering',
  'Writing',
  'Yoga',
];
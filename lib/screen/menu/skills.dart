import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

bool isform = false;

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
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
                    'Add Skills  ',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          (isform)?Container(
            height: 590.3,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(skillsbool.length, (index) => check(index))
              ),
            ),
          ):Container(),
        ],
      ),
    );
  }
  Widget check(int? index)
  {
    return CheckboxListTile(
      title: Text('${skillsname[index!]}'),
      value: skillsbool[index!],
      onChanged: (value) {
        setState(() {
          skillsbool[index!] = value!;
          if(value==true)
            {
              skillname.add(skillsname[index]);
              print(skillname);
            }
          else{
            skillname.remove(skillsname[index]);
            print(skillname);
          }
        });
      },
    );
  }
}
List skillname=[];
List skillsbool = [
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
List skillsname = [
  'Active listening',
  'Adaptability',
  'Attention to detail',
  'Collaboration',
  'Communication',
  'Computer',
  'Conflict resolution',
  'Content management',
  'Creativity',
  'Critical thinking',
  'Customer Service',
  'Data analysis',
  'Decision-making',
  'Emotional intelligence',
  'G-Suite',
  'Interpersonal communication',
  'Leadership',
  'Management',
  'Marketing',
  'MS Office',
  'Organization',
  'Planning and coordination',
  'Problem solving',
  'Project management',
  'public relation',
  'Self discipline',
  'Self motivated',
  'Teamwork',
  'Time management',
  'Writing',
  'Analytical skills',
  'Research skills'
];

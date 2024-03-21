import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

bool isform =false;

TextEditingController txtname = TextEditingController(text: 'gold');
String name = txtname.text;
Map achievement ={
};

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('achievement'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  setState(() {
                    isform = true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Container(
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                        color:(isform)?Color(0xff0a2663):Colors.blue.shade900,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add, color: Colors.white,),
                        Text('Add achievement  ',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              (isform)?Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 200,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xffe1e7f8),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 170,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xff1b1a1f),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formkey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.stars,
                                  color: Colors.blue.shade900,
                                  size: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: SizedBox(
                                    width: 210,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'please enter your achievement ';
                                        }
                                      },
                                      controller: txtname,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Achievement ',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(onTap: () {
                                  setState(() {
                                    isform=false;
                                  });
                                },child: Text('Cancel')),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(formkey.currentState!.validate())
                                      {
                                        Navigator.of(context).pop();
                                        achievement = {
                                          'name':name,
                                        };
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('Save',textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ):Container()
            ],
          ),
        ),
      ),
    );
  }
}

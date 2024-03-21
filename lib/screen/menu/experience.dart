import 'package:flutter/material.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

bool isform =false;

TextEditingController txttitle = TextEditingController(text: 'title');
String title = txttitle.text;
TextEditingController txtname = TextEditingController(text: 'name');
String name = txtname.text;
TextEditingController txtstart = TextEditingController(text: '2009');
String start = txtstart.text;
TextEditingController txtend = TextEditingController(text: '2019');
String end = txtend.text;

Map experience ={};

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Experience'),
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
                    width: 160,
                    decoration: BoxDecoration(
                        color:(isform)?Color(0xff0a2663):Colors.blue.shade900,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add, color: Colors.white,),
                        Text('Add Experience  ',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              (isform)?Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 420,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xffe1e7f8),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 390,
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
                                  Icons.work,
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
                                          return 'please enter your Job title';
                                        }
                                      },
                                      controller: txttitle,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Job title',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.store,
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
                                          return 'please enter your Company name';
                                        }
                                      },
                                      controller: txtname,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Company name',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.calendar_month,
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
                                          return 'please enter your start year';
                                        }
                                      },
                                      controller: txtstart,
                                      keyboardType: TextInputType.datetime,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Start Year',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.calendar_month,
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
                                          return 'please enter your end year';
                                        }
                                      },
                                      controller: txtend,
                                      keyboardType: TextInputType.datetime,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Phone',
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
                                        experience = {
                                          'jobtitle':txttitle.text,
                                          'companyname':name,
                                          'startyear':start,
                                          'endyear':end,
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

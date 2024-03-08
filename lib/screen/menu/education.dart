import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

bool isform =false;

TextEditingController txtname = TextEditingController();
TextEditingController txtdegree = TextEditingController();
TextEditingController txtstart = TextEditingController();
TextEditingController txtend = TextEditingController();

Map edu ={};

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Education'),
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
                        Text('Add Education  ',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              (isform)?Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 450,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xffe1e7f8),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 420,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
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
                                  Icons.school,
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
                                          return 'please enter your School name';
                                        }
                                      },
                                      controller: txtname,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'School Name',
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
                                  Icons.workspace_premium,
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
                                          return 'please enter your degree';
                                        }
                                      },
                                      controller: txtdegree,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Degree',
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
                                          'End Year',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            InkWell(
                              onTap: () {
                                if(formkey.currentState!.validate())
                                {
                                  Navigator.of(context).pop();
                                  edu = {
                                    'schoolname':txtname,
                                    'degree':txtdegree,
                                    'startyear':txtstart,
                                    'endyear':txtend,
                                  };
                                }
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

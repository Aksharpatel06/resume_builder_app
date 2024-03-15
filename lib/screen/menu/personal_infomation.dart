import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Personinfo extends StatefulWidget {
  const Personinfo({super.key});

  @override
  State<Personinfo> createState() => _PersoninfoState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();
bool istext = false;

TextEditingController txtfname = TextEditingController();
String fname = txtfname.text;
TextEditingController txtlname = TextEditingController();
String lname = txtlname.text;
TextEditingController txtpro = TextEditingController();
String pro = txtpro.text;
TextEditingController txtgen = TextEditingController();
String gen = txtgen.text;
TextEditingController txtnat = TextEditingController();
String nat = txtnat.text;
TextEditingController txtdt = TextEditingController();
String dt = txtdt.text;
TextEditingController txtphone = TextEditingController();
String phone = txtphone.text;
TextEditingController txtmail = TextEditingController();
String mail = txtmail.text;
TextEditingController txtaddress = TextEditingController();
String address = txtaddress.text;

Map information={};

class _PersoninfoState extends State<Personinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person information'),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                // print(FileImage(imgpath!));
                Navigator.of(context).pushNamed('/pdf');

                // if(formkey.currentState!.validate())
                //   {
                    information ={
                      'img':imgpath,
                      'firstname':fname,
                      'lastname':lname,
                      'profession':pro,
                      'gender':gen,
                      'nationality':nat,
                      'dateofbirth':dt,
                      'phone':phone,
                      'emailaddress':mail,
                      'address':address,
                    };
                  // }
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
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.5,
                            )
                          ]),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            (imgpath != null) ? FileImage(imgpath!) : null,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      left: 66,
                      child: InkWell(
                        onTap: () {
                          setImage();
                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.5,
                                    blurRadius: 0.5)
                              ]),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Add Profile Picture',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue.shade900,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your first name';
                          }
                        },
                        controller: txtfname,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'First Name',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your last name';
                      }
                    },
                    controller: txtlname,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.newline,
                    decoration: const InputDecoration(
                      label: Text(
                        'Last Name',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
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
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your profession';
                          }
                        },
                        controller: txtpro,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'Profession',
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
                    Icons.transgender,
                    color: Colors.blue.shade900,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your gender';
                          }
                        },
                        controller: txtgen,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'Gender',
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
                    Icons.flag,
                    color: Colors.blue.shade900,
                    size: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your national';
                          }
                        },
                        controller: txtnat,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'nationslity',
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
                    Icons.cake,
                    color: Colors.blue.shade900,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your date of birth';
                          }
                        },
                        controller: txtdt,
                        keyboardType: TextInputType.datetime,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'date of birth',
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
                    Icons.phone,
                    color: Colors.blue.shade900,
                    size: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your phone number';
                          }
                        },
                        controller: txtphone,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'phone',
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
                    Icons.mail,
                    color: Colors.blue.shade900,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your Email';
                          }
                        },
                        controller: txtmail,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'Email Address',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 158.0, top: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if(istext)
                          {
                            istext = false;
                          }
                        else{
                          istext = true;
                        }
                      });
                    },
                    child: Text(
                      'Add Address',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  )
              ),
              (istext)?Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue.shade900,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {

                        },
                        controller: txtaddress,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
                          label: Text(
                            'Address',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ):Container(),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

  void setImage() async {
    XFile? images = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imgpath = File(images!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? imgpath;

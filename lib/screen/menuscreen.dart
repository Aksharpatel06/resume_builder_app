import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text('Profile'),
        actions: [
          Container(
            height: 35,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text('view',style: TextStyle(color: Colors.white),),
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,0,16,0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/person');
                },
                child: Row(
                  children: [
                    Icon(Icons.person,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Personal Info',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/objective');
                },
                child: Row(
                  children: [
                    Icon(Icons.flag,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Objective',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  setState(() {
                  });
                  Navigator.of(context).pushNamed('/education');
                },
                child: Row(
                  children: [
                    Icon(Icons.school,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Education',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  setState(() {
                  });
                  Navigator.of(context).pushNamed('/skills');
                },
                child: Row(
                  children: [
                    Icon(Icons.security,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Skills',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  setState(() {
                  });
                  Navigator.of(context).pushNamed('/experience');
                },
                child: Row(
                  children: [
                    Icon(Icons.work,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Experience',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  setState(() {
                  });
                  Navigator.of(context).pushNamed('/reference');
                },
                child: Row(
                  children: [
                    Icon(Icons.person_add,color: Colors.blue.shade900,size: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Reference',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 208.0),
                child: Text('More Sections',style: TextStyle(color: Colors.grey,fontSize: 18),),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.folder,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Project',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.emoji_events_outlined,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Interest',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.folder,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Project',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.language,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Language',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.stars,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Achievement',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.feed,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Publication',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.lyrics,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Additional Details',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.signature,color: Colors.blue.shade900,size: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('Signature',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
            ],
          ),
        ),
      ),
    );
  }
}

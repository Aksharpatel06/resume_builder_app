import 'package:flutter/material.dart';
import 'package:resume_builder_app/screen/homescreen.dart';
import 'package:resume_builder_app/screen/menu/education.dart';
import 'package:resume_builder_app/screen/menu/experience.dart';
import 'package:resume_builder_app/screen/menu/objective.dart';
import 'package:resume_builder_app/screen/menu/personal_infomation.dart';
import 'package:resume_builder_app/screen/menu/reference.dart';
import 'package:resume_builder_app/screen/menu/skills.dart';
import 'package:resume_builder_app/screen/menuscreen.dart';
import 'package:resume_builder_app/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>splashscreen(),
        '/home':(context)=>homescreen(),
        '/menu':(context)=>menuscreen(),
        '/person':(context)=>Personinfo(),
        '/objective':(context)=>objective(),
        '/education':(context)=>education(),
        '/skills':(context)=>Skills(),
        '/experience':(context)=>Experience(),
        '/reference':(context) => Reference(),
      },
    );
  }
}
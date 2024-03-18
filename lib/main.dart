import 'package:flutter/material.dart';
import 'package:resume_builder_app/screen/homescreen.dart';
import 'package:resume_builder_app/screen/menu/achievement.dart';
import 'package:resume_builder_app/screen/menu/additionaldetails.dart';
import 'package:resume_builder_app/screen/menu/education.dart';
import 'package:resume_builder_app/screen/menu/experience.dart';
import 'package:resume_builder_app/screen/menu/interests.dart';
import 'package:resume_builder_app/screen/menu/language.dart';
import 'package:resume_builder_app/screen/menu/objective.dart';
import 'package:resume_builder_app/screen/menu/pdfview.dart';
import 'package:resume_builder_app/screen/menu/personal_infomation.dart';
import 'package:resume_builder_app/screen/menu/project.dart';
import 'package:resume_builder_app/screen/menu/publication.dart';
import 'package:resume_builder_app/screen/menu/reference.dart';
import 'package:resume_builder_app/screen/menu/skills.dart';
import 'package:resume_builder_app/screen/menuscreen.dart';
import 'package:resume_builder_app/screen/pdf.dart';
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
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>const splashscreen(),
        '/home':(context)=>const homescreen(),
        '/menu':(context)=>const menuscreen(),
        '/person':(context)=>const Personinfo(),
        '/objective':(context)=>const objective(),
        '/education':(context)=>const education(),
        '/skills':(context)=>const Skills(),
        '/experience':(context)=>const Experience(),
        '/reference':(context) => const Reference(),
        '/project':(context)=>const project(),
        '/interests':(context)=>const interests(),
        '/Language':(context)=>const Language(),
        '/achievement':(context)=>const Achievement(),
        '/publication':(context) => const Publication(),
        '/ad':(context) => const AdditionalDetails(),
        '/pdf':(context) => pdf(),
        '/pdfpriveiw':(context) => pdfpreview(),
      },
    );
  }
}
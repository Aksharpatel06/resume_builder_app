import 'dart:async';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}
int seconds=0,minutes=0;
bool istap = false;
class _splashscreenState extends State<splashscreen> {

  Future<void> stop() async {
    await Future.delayed(const Duration(seconds: 1),
            (){
          setState(() {
            if (seconds <= 5) {
              seconds++;
            }

          });
        }
    );
      stop();
  }
  @override
  Widget build(BuildContext context) {
    if(istap)
      {
        Timer(Duration(seconds: 5), () {
          Navigator.pushReplacementNamed(context, '/home');
        });
      }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('asset/image/logo.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'CV Maker',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          SizedBox(height: 10,),
          Container(
            width: 322,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done_sharp,
                          size: 18,
                          color: Colors.white,
                        )),
                    Text(' Create a professional rsume in minuates'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done_sharp,
                          size: 18,
                          color: Colors.white,
                        )),
                    Text(' Multiple CV & resume templates'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done_sharp,
                          size: 18,
                          color: Colors.white,
                        )),
                    Text(
                      ' Download & share your CV in PDF',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          (seconds==0)?OutlinedButton(onPressed: () {
            setState(() {
              istap = true;
              if(seconds<5)
                {
                  stop();
                  seconds=0;
                }
            });
          }, style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) =>Colors.blue )),
              child: Text('Continue',style: TextStyle(color: Colors.white),)):Padding(
            padding: const EdgeInsets.fromLTRB(50,0,50,0),
            child: LinearProgressIndicator(
              value: seconds/5,
              minHeight: 15,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              backgroundColor: Color(0xff1e3b80),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('This action may contain an Ad',style: TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}

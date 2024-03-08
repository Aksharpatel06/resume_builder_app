import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'CV Maker',
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(width: 120,),
                      Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.black,
                          )),
                      Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.menu,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/menu');
                      setState(() {
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Container(
                            height: 25,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Icon(Icons.add,color: Colors.indigoAccent,),
                          ),
                          Text(' Create New',style: TextStyle(color: Colors.white,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Icon(Icons.home),
                      ),
                      Text('Home')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download,color: Colors.grey.shade600,),
                      Text('Download',style: TextStyle(color: Colors.grey.shade600,),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

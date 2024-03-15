import 'package:flutter/material.dart';

import '../../utils/list.dart';

class objective extends StatefulWidget {
  const objective({super.key});

  @override
  State<objective> createState() => _objectiveState();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();


String text='';

int indexnumber = 0;
String fixtext ='';
class _objectiveState extends State<objective> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtobjective = TextEditingController(text:text);
    return Form(
      key: formkey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Objective'),
          actions: [
            InkWell(
              onTap: () {
                if(formkey.currentState!.validate())
                {
                  fixtext=txtobjective.text;
                  Navigator.of(context).pop();
                }
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IndexedStack(
              index: indexnumber,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your objective';
                      }
                    },
                    controller: txtobjective,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.newline,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Objective',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      l2.length, (index) => text1(l2[index], index))),
            )
          ],
        ),
      ),
    );
  }

  Widget text1(String? name1, int? index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black12)),
        child: TextButton(
            onPressed: () {
              setState(() {
                text = l2[index!];
              });
            },
            child: Text(
              name1!,
              textAlign: TextAlign.start,
            )),
      ),
    );
  }
}

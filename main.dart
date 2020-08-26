import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'field_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'VarelaR',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CallUi(),
    );
  }
}

class CallUi extends StatelessWidget {
  List contacts = [
    Card('Fertilizer Expert'),
    Card('Crop Expert'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 10.0, left: 10.0, bottom: 0),
                          child: Text(
                            'Call Agri Doctor',
                            style:
                                TextStyle(fontSize: 25, fontFamily: 'VarelaR'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 10.0, left: 10.0, bottom: 0),
                          child: Text(
                            'Click on more to view details',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'VarelaR'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                    ))
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: contacts.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return contacts[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  String title;

  Card(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 90,
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, .05),
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'more',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpertUi()),
                      );
                    },
                ),
              ),
            ],
          ),
          Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_rounded,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .05),
                    blurRadius: 20,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

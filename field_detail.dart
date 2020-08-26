import 'package:flutter/material.dart';

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
      home: ExpertUi(),
    );
  }
}

class ExpertUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  right: 10.0,
                                  left: 10.0,
                                  bottom: 0),
                              child: Text(
                                'Fertilizer Expert',
                                style: TextStyle(
                                    fontSize: 25, fontFamily: 'VarelaR'),
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
                    SizedBox(height: 50),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                right: 10,
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: 150,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'message',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.greenAccent),
                            ),
                            Icon(Icons.message_rounded,
                                color: Colors.greenAccent)
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, .05),
                              blurRadius: 20,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    InkWell(
                      child: Container(
                        width: 150,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'call',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Icon(Icons.call_rounded, color: Colors.white)
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, .05),
                              blurRadius: 20,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

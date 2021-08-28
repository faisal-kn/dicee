import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNo = 2;
  int rightDiceNo = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Let\'s play dicee',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                width: 130.0,
                height: 25.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Divider(
                    height: 5.0,
                    thickness: 5.0,
                    color: Colors.white70,
                  ),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          leftDiceNo = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/dice$leftDiceNo.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          rightDiceNo = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset('images/dice$rightDiceNo.png')),
                ),
              ]),
              Container(
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Click the images to play 😉😉',
                    style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

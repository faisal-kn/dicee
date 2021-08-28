import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                width:130.0,
                height: 25.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Divider(
                    height: 5.0,
                    thickness:5.0,
                    color:Colors.white70,
                  ),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        print('Button got pressed');
                      },
                      child: Image.asset('images/dice1.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        print('Button 2 got pressed');
                      },
                      child: Image.asset('images/dice2.png')),
                ),
              ])
            ]),
      ),
    );
  }
}

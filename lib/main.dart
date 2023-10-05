import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: Text('Home'),
      ),
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 50.0,
            height: 50.0,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 50.0,
              width: 80,
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ],
      )
    );
  }
}


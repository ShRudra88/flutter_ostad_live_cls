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
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              height: 50,
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              height: 50,
            ),
          ),
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.blue,
              height: 50,
            ),
          ),
        ],
      )

    );
  }
}


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
        title: Text('Home'),
      ),
      body: Center(
        child: Stack( // postitioned sudhu stack e use hoi
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Positioned( // postitined.fill porota fill korbe
              right: 0,
              left: 0,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
            Container(
              width: 30,
              height: 20,
              color: Colors.black,
            )
          ],
        ),
      )
    );
  }
}


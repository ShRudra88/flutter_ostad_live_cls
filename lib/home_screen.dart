import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size1 = MediaQuery.of(context).size;
    //Size size1 = MediaQuery.sizeOf(context);
    print(size1);
    print(size1.width);
    print(size1.height);
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        title: Text('Intro to App'),
      ),
      body: Center(
        child: Text(orientation == Orientation.portrait ? 'Portrai' : 'Landscape'),
      ),
    );
  }
}

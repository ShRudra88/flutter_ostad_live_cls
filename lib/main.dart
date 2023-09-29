import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.amber,
          )
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Home"),
      ),
      body: Column(
       children: [
         Switch(value: true, onChanged: (bool value){}),
         ElevatedButton(onPressed: (){
           showDialog(
               barrierColor: Colors.pinkAccent,
               barrierDismissible: false,

               context: context, builder: (context)
               {

                 return AlertDialog(
                   title: Text('Alert'),
                   content: Text( // subtitile/ body
                     'You are in danger'
                   ),
                   actions: [
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text('Cancel')),
                     TextButton(onPressed: (){}, child: Text('Okay')),
                   ],
                 );
               });
         }, child: Text('Show dialog.'))
       ],
      ),
    );
  }
}

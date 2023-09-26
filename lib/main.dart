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
    );
  }
}

/// Route
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: TextStyle(fontSize: 24),
              ),

              ElevatedButton(
                child: Text('Go to settings page'),
                onPressed: () {
                  // navtigation -> ak page theke onno page e jawa
                  // route home -> route settings
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingScreen(),),);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OrdersScreen(),),);
                },
                child: Text('Go to Order'),
              ), ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> (),),);
                 Navigator.push(context, MaterialPageRoute(builder: (Context) => ProductListScreen()));
                },
                child: Text('Go to Product list'),
              ),
            ],
          ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Setting',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Page',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Orders',
              style: TextStyle(fontSize: 100),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to home'),
            )
          ],
        ),
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder :(context){
                return ProductDetailsScreen(producName: index.toString());
              }));
            },
            title: Text(index.toString()),
            subtitle: Text('Product details $index'),
          );
        }
      ),
    );
  }
}


class ProductDetailsScreen extends StatelessWidget {

  final String producName;
  const ProductDetailsScreen({Key? key, required this.producName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Product Details'),
      ),
      body: Center(
        child: Text(producName, style: TextStyle(
          fontSize: 24
        ),),
      )
    );
  }
}

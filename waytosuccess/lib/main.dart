import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AWESOME APP"),
      ),
      body: Center(
        child: Container( 
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
        ),
        floatingActionButton:FloatingActionButton(onPressed: () {}, 
        child: Icon(Icons.edit),
        ),
    );
  }
}

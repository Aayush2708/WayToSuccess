import 'package:flutter/material.dart';
void main()  {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red, 
    ),
  ));
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AWESOME APP BY AAYUSH GUPTA"),
        );
      body: Center(
        child: Container(
          height:100,
          width: 100,
          color: Colors.teal,
        )
      ),
    ); 
  }
}
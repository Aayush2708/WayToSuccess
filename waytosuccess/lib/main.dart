

import 'package:flutter/material.dart';
import 'package:waytosuccess/Drawer.dart';
void main()  {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red, 
    ),
  ));
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   var myText = "CHANGE my NAME";
   TextEditingController _nameController= TextEditingController ();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("AWESOME APP BY AAYUSH GUPTA"),
      ),
      body: Center(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( 
         child: Card(
          child: Column(
            children: <Widget> [
            Image.asset("assets/IMG_20201016_142211.jpg",
            ),
            SizedBox(
              height: 20
            ),
            Text( myText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 20
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
              decoration :InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter some text", 
                labelText: "NAME",
             
             ),
             ),
             ),
            ],
          ),
         ), 
        ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text ;
          setState(() {
            
          });
        },
        child: Icon(Icons.send),
        
      ),
    ); 
  }
}
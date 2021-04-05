

import 'package:flutter/material.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("AAYUSH GUPTA"), 
              accountEmail: Text("aayushgupta2708@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1588731247530-4076fc99173e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fGd1eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"

                ),
                ),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("AAYUSH GUPTA"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("aayushgupta2708@gmail.com"),
              trailing: Icon(Icons.emoji_people),
            ),
          ],
        ),
      ),
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
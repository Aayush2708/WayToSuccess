import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Title"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello Log Profile");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text("Setting"),
              subtitle: Text("View your Setting"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                log("Hello AMS Student");
              },
            ),
          )
        ],
      ),
    );
  }
}

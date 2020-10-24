
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: debugDefaultTargetPlatformOverride == TargetPlatform.android?5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_upward),
            ),
            Divider(),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
        ),
    );
  }
}
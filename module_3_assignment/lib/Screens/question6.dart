  import 'package:flutter/material.dart';

class question8 extends StatelessWidget {
    const question8({super.key});

    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          title: Text('Option Menu'),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Profile"),),
                PopupMenuItem(child: Text("Log Out"))
              ] ;
            },
            ),
          ],
        ),

        body:Center(
            child: Container(
              child: Text('Hello World'),
            ),
            ),

      );
    }
  }



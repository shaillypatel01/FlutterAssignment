import 'package:flutter/material.dart';

class question7 extends StatelessWidget {
  const question7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('manu Items'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search action here
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Add your action here based on the selected item
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

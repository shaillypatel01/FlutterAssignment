import 'package:flutter/material.dart';

import 'Screens/question1.dart';
import 'Screens/question10.dart';
import 'Screens/question11.dart';
import 'Screens/question12.dart';
import 'Screens/question2.dart';
import 'Screens/question3.dart';
import 'Screens/question4.dart';
import 'Screens/question5.dart';
import 'Screens/question6.dart';
import 'Screens/question7.dart';
import 'Screens/question9.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView.builder",
        theme:  ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              backgroundColor: MaterialStateProperty.all(Color(0xFFF4ABC4)),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
          ),
        ),

        debugShowCheckedModeBanner: false,

        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home:  listtest());
  }
}

class listtest extends StatefulWidget {
  @override
  State<listtest> createState() => _listtestState();
}

class _listtestState extends State<listtest> {
  List<Widget> screens=[
    question1(),
    question2(),
    question3(),
    question4(),
    questiion5(),
    question8(),
    question7(),
    Question9(),
    question10(),
    question11(),
    q12(),
    // Question13()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body:  ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: screens.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screens[index]),
                );
              },
              title: Text("${screens[index]}"),
            );
          }
      ),
    );
  }
}

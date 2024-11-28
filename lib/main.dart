// ListView.Separator, Container........................................
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HellowWorldApp());
}

class HellowWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendList = [
    'Shaon',
    'Kahalid',
    'Rafi',
    'Mahabub',
    'Sium',
    'Shaon',
    'Kahalid',
    'Rafi',
    'Mahabub',
    'Sium',
    'Kahalid',
    'Rafi',
    'Mahabub',
    'Sium',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      // ListView.Separator.....................................................
      body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(friendList[index]),
              /*Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.amber,
                  indent: 10,
                  endIndent: 16,
                ),*/
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 20,
            thickness: 2,
            color: Colors.amber,
            endIndent: 16,
            indent: 10,
          );
        },
      ),);
  }
}

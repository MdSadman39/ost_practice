import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendlist = [
    'Sadman',
    'Hafiz',
    'Shaon',
    'Karim',
    'Rahim',
    'Salam'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar..................................................................
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          // IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
        ],
      ),
      //drawer..................................................................
      drawer: const Drawer(
        backgroundColor: Colors.white54,
        child: Column(
          children: [
            Text('jvkdfvnjkfc'),
          ],
        ),
      ),
      //Navigation Bar..........................................................
      bottomNavigationBar: NavigationBar(selectedIndex: 1, destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
      ]),
      // SingleChildScrollView...................................................
      /*body: SingleChildScrollView(
       child: Column(
         children: [
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           Text('Sadman'),
           
         ],
       ),
     ),*/
      //ListView................................................................
      /*body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        interactive: true,
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          children: [
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
            Text('Sadman'),
        
          ],
        ),
      ),*/
      //ListView Builder........................................................
      body: Scrollbar(
        /*child: ListView.builder(
          itemCount: 100,//100-1=99 => 0-99
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
          itemBuilder:(context, index) {
            return Text('item $index');
          } ,

        ),*/
        child: ListView.builder(
            itemCount: friendlist.length,
            itemBuilder: (cintext, index) {
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(friendlist[index]),
              );
            }),
      ),
    );
  }
}

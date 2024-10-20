import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(HelloWorldApp());
}
class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: Text('Home'),
        centerTitle: true,
      ),
      //drawer..................................................................
      drawer: Drawer(
         width: 300,
        backgroundColor: Colors.white54,
        child: Column(
          children: [
            Text('Sadman'),
            Text('Hafiz'),
          ],
        ),
      ),
      // Navigation Bar.........................................................
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,

        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
      //SingleChildScrollView...................................................
   /* body: Scrollbar(child:SingleChildScrollView(
      child: Column(
        children: [
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
          Text('asdf'),
        ],
      ),
    ) ,),*/
    //ScrollBar.................................................................
      body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        interactive: true,
        child:ListView(
          children: [
            Text('first'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('last'),
          ],
        )

        ,),
    );
  }
}



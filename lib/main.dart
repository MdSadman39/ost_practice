import 'package:flutter/material.dart';

// ListView.Separator, Container

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendList = [
    'Iram',
    'Shabbin',
    'Rakib',
    'Hasan',
    'Roy',
    'Niloy',
    'Hasan',
    'Fahad',
    'Nilly',
    'Touhid',
    'Mony',
    'Random',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
/*      body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(friendList[index]),
              // Divider(
              //   height: 20,
              //   thickness: 2,
              //   color: Colors.grey,
              //   indent: 10,
              //   endIndent: 16,
              // ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey,
            endIndent: 16,
          );
        }
      ),*/
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ]
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                      // borderRadius: BorderRadius.circular(16)
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(16),
                      //   bottomRight: Radius.circular(16)
                      // ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/shoe.jpg'),
                        fit: BoxFit.cover,
                        opacity: 0.3,
                      ),
                    ),
                    child: Text('Random'),
                  ),
                  Text('Shoe')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// NamedNavigation,StatefullWidget

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/home',
      // routes: {
      //   '/home': (context) => Home(),
      //   '/profile': (context) => Profile(),
      //   '/settings': (context) => Settings(),
      // },
      home: CounterScreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Profile(),
              //   ),
              // );
              Navigator.pushNamed(context, '/profile');
            },
            child: Text('Go to Profile'),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Settings(),
              //   ),
              // );
              Navigator.pushReplacementNamed(context, '/settings');
            },
            child: Text('Go to Settings'),
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Home(),
              //     ),
              //     (predicate) => false);
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (predicate) => false);
            },
            child: Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}

// class CounterScreen extends StatelessWidget {
//    CounterScreen({super.key});
//   int Counter=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Text('Counter value is $Counter'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Counter=Counter+1;
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Counter value is $Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Counter = Counter + 1;
          setState(() {});
        },
        child:const  Icon(Icons.add),
      ),
    );
  }
}

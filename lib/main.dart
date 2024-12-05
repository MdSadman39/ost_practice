import 'package:flutter/material.dart';

/// Navigation

// Route
// Route to Route Navigation
// Navigator
// Stack

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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profile(username: 'Rabbi');
                    },
                  ),
                );
              },
              child: Text('Go to profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Settings();
                    },
                  ),
                );
              },
              child: Text('Go to Settings'),
            )
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(username),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                // go to profile
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
              child: Text('Move to Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                      (predicate) => false,
                );
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
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
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // go to profile
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(username: 'Fahad',),
                  ),
                );
              },
              child: Text('Move to profile'),
            ),
          ],
        ),
      ),
    );
  }
}
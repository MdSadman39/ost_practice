import 'package:flutter/material.dart';

// Gridview, ListTile, Form, GlobalKey, Key

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
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
  ];
  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      // body: ListView.builder(
      //   itemCount: friendList.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(friendList[index]),
      //       subtitle: Text('Friend no $index'),
      //       trailing: Icon(Icons.arrow_forward),
      //       leading: CircleAvatar(
      //         child: Icon(Icons.person),
      //       ),
      //       onTap: () {
      //         print('on tap $index');
      //       },
      //       onLongPress: () {
      //         print('on long press $index');
      //       },
      //       // tileColor: Colors.white10,
      //       contentPadding: EdgeInsets.symmetric(
      //         horizontal: 24,
      //         vertical: 4
      //       ),
      //       // enabled: false,
      //       dense: false, // TODO: need to explain
      //       titleTextStyle: TextStyle(
      //         fontSize: 24,
      //         color: Colors.pink
      //       ),
      //       subtitleTextStyle: TextStyle(
      //         fontSize: 12,
      //         color: Colors.blue
      //       ),
      //       // selected: true,
      //       // selectedColor: Colors.pink,
      //     );
      //   },
      // ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 12,
      //     crossAxisSpacing: 8
      //   ),
      //   children: [
      //     Text('dsfdf'),
      //     Text('dsfdf'),
      //     Text('dsfdf'),
      //     Text('dsfdf'),
      //   ],
      // ),
      // body: GridView.builder(
      //     gridDelegate:
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //     itemCount: friendList.length,
      //     itemBuilder: (context, index) {
      //       return Center(child: Text(friendList[index]));
      //     },
      // ),
      body: Padding(
        key: Key('my-padding-key'),
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _emailTEController,
                decoration: InputDecoration(hintText: 'Email'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _passwordTEController,
                decoration: InputDecoration(hintText: 'Password'),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter your password';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // String email = _emailTEController.text;
                  // String password = _passwordTEController.text;
                  // if (email.isNotEmpty && password.isNotEmpty) {
                  //   print('Login success');
                  // } else {
                  //   print('Login failed. Missing data');
                  // }
                  if (_formKey.currentState!.validate()) {
                    print('Login success');
                  }
                },
                child: Text('Tap'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
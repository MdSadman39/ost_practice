import 'package:flutter/material.dart';

/// MediaQuery | Wrap | LayoutBuilder | OrientationBuilder

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/profile': (context) => Profile(),
      //   '/settings': (context) => Settings(),
      // },
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // Size screenSize = MediaQuery.sizeOf(context);
    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.flipped);
    print(screenSize.aspectRatio);
    print(screenSize.longestSide);
    print(screenSize.shortestSide);

    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Wrap(
      //       alignment: WrapAlignment.center,
      //       crossAxisAlignment: WrapCrossAlignment.start,
      //       spacing: 8,
      //       runSpacing: 8,
      //       children: [
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //         ElevatedButton(onPressed: () {}, child: Text('Button')),
      //       ],
      //     )
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //   child: LayoutBuilder(
      //     builder: (BuildContext context, BoxConstraints constraints) {
      //       return Center(
      //         child: Text('${constraints.maxHeight} ${constraints.maxWidth}'),
      //       );
      //     }
      //   ),
      // ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Center(child: Text('Hello World'));
          } else {
            return Center(child: Text('Hello another world'));
          }
        },
      ),
    );
  }
}
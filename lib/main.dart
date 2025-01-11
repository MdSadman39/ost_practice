import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

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
      // appBar: AppBar(
      //   title: Text('Home'),
      //   centerTitle: true,
      //   backgroundColor: Colors.green,
      // ),
      // body:FractionallySizedBox(
      //   widthFactor: 0.5,
      //   heightFactor: 0.75,
      //   alignment: Alignment(0, 0),
      //   child: ColoredBox(color: Colors.black26),
      // ) ,
      // body: AspectRatio(
      //   aspectRatio: 16 / 9,
      //   child: ColoredBox(color: Colors.black26),
      // ),
      // body: Column(
      //   children: [
      //     Flexible(
      //       fit: FlexFit.tight,
      //       flex: 4,
      //       child: SizedBox(
      //         width: double.maxFinite,
      //         height: 100,
      //         child: ColoredBox(color: Colors.black),
      //       ),
      //     ),
      //     Expanded(
      //         flex: 2,
      //         child: SizedBox(
      //             width: double.maxFinite,
      //             height: 100,
      //             child: ColoredBox(color: Colors.red))),
      //     SizedBox(
      //       height: 50,
      //       width: double.maxFinite,
      //       child: ColoredBox(color: Colors.amber),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Tooltip(
          message: 'This is a row',
          exitDuration: Duration(seconds: 2),
          triggerMode: TooltipTriggerMode.tap,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

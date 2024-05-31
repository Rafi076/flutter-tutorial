// AspectRatio_Expanded_FractinallsizedBox

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(),
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
        backgroundColor: Colors.green,
        leading: Icon(Icons.hourglass_bottom_sharp),
      ),
      // body: Center(
      //   child: Row(
      //     children: [
      //       Flexible(
      //         fit: FlexFit.tight,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.red,
      //         ),
      //       ),
      //       Flexible(
      //         flex: 2, // that mean yellow conatiner took 2 place from tottal!
      //         fit: FlexFit.tight,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Flexible(
      //         // fit: FlexFit.tight in a Flutter Flex widget (such as Row or Column) makes the child widget expand to fill the available space along the main axis.
      //         //  It forces the child to take up all the remaining space in the Flex container.
      //         //  This is useful for evenly distributing space among multiple children.
      //         fit: FlexFit.tight,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.green,
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // fractionally sizebox
      // body: Column(
      //   children: [
      //     SizedBox(
      //       width: MediaQuery.sizeOf(context).width,
      //       height: 100,
      //       child: FractionallySizedBox(
      //         widthFactor: 0.5,
      //         heightFactor: 0.7,
      //         child: Container(
      //           color: Colors.black,
      //         ),
      //       ),
      //     )
      //   ],
      // ),

      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 5,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

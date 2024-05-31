import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Media Query: MediaQuery in Flutter provides information about the size, orientation, and other properties of the current screen.
    // It helps adapt the UI layout according to different screen sizes and device characteristics. By accessing MediaQuery.of(context),
    // you can obtain context-specific details like screen width, height, padding, and text scaling factor
    print(MediaQuery.of(context).size);
    print(MediaQuery.sizeOf(context)); // width and Height
    print(MediaQuery.displayFeaturesOf(context));
    print(MediaQuery.devicePixelRatioOf(context));
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
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),

      // if we do it like this. then there is possibilities of horizontal axis problem, to over come this we can do this in singelChildScrollView
      // body: Center(
      //   child: Row(
      //     children: [
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //     ],
      //   ),
      // ),

      // so we can do this ---> SingleChildScrollView:
      // SingleChildScrollView in Flutter is a widget that enables a single child to be scrollable when its content exceeds the available screen space.
      //  It's particularly useful for creating scrollable layouts in small areas where a list or other scrollable widgets might be overkill.
      //  It ensures the child content is accessible through vertical or horizontal scrolling as needed

      // body: Center(
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Text(MediaQuery.orientationOf(context).toString()),
      //         Text(MediaQuery.orientationOf(context).toString()),
      //         Text(MediaQuery.orientationOf(context).toString()),
      //         Text(MediaQuery.orientationOf(context).toString()),
      //         Text(MediaQuery.orientationOf(context).toString()),
      //       ],
      //     ),
      //   ),
      // ),

      // But !!! if we have a requirment like ----->> we can can not go horizontali. "if the its not fitting in a line then we will go to next line"
      // for this we will use ***********wrap******************** !!
      // The Wrap widget in Flutter arranges its children in multiple horizontal or vertical runs, automatically wrapping to the next line or column when there isn't enough space.
      //  It's useful for creating responsive layouts with elements like tags or buttons that need to flow and wrap within the available space.
      //  You can customize the spacing between items and the alignment of runs.
      // body: Center(
      //   child: Wrap(
      //     // for alingment
      //     alignment: WrapAlignment.center,
      //     crossAxisAlignment: WrapCrossAlignment.center,  // crossAxisAlignment: WrapCrossAlignment.center in Flutter's Wrap widget aligns the children along the cross axis (perpendicular to the main axis) in the center.
      //     spacing: 5,
      //     children: [
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //     ],
      //   ),
      // ),

      // LayoutBuilder in Flutter is a widget that builds its child dynamically based on the parent widget's constraints.
      //  It provides a BoxConstraints object, allowing you to adapt the layout according to the available space.
      //  This is particularly useful for creating responsive designs that adjust to different screen sizes(monitor, laptop, phone screen) and orientations.

      // body: LayoutBuilder(
      //   builder: (Builder context, BoxConstraints constraints) {
      //   if (constraints.maxWidth<400) {
      //     return const Center(child: Text('Mobile'),);
      //   // ignore: curly_braces_in_flow_control_structures
      //   } else if (constraints.maxWidth<600) return const Center(child: Text('tablet'),);

      // },

      // Oraientation Builder
      // body: OrientationBuilder(builder: (context, Orientation) {
      //   if (Orientation == Orientation.landscape) {
      //     return Container(width: double.infinity, height: double.infinity, color: Colors.yellow,);
      //   } else {
      //     return Container(width: double.infinity, height: double.infinity, color: Colors.red,);
      //   }
      // }),
    );
  }
}

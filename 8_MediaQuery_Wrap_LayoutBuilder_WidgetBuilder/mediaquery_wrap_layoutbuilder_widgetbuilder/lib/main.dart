import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Media Query
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

      // so we can do this --->
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
      body: Center(
        child: Wrap(
          // for alingment
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 5,
          children: [
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
          ],
        ),
      ),
    );
  }
}

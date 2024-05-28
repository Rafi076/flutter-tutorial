import 'package:flutter/material.dart';
import 'package:statefull_widget/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

// this is a statless widget ; which dosent have the rendering capabilitty
// class Home extends StatelessWidget {
//   Home({super.key});

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text('Home'),
//         leading: Icon(Icons.home),
//         actions: [Icon(Icons.add)],
//       ),
//       body: Center(
//         child: Text(
//           counter.toString(),
//           style: TextStyle(fontSize: 25),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter++;
//           print(counter);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }



// stateful widegt created in Home.dart file
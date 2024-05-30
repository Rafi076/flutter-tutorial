// this is a statlful widget ; which have the rendering capabilitty
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [Icon(Icons.add)],
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        /// to locate the + , - icon at the end
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              print(counter);

              // set state is a method which indiacte that i have cahnged the state!!... **** without this method value will not be update dynamically in emulator.
              setState(() {});
            },
            child: Icon(Icons.add),
          ),
          // to create space between + & - Icon
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              counter--;
              print(counter);

              // set state is a method which indiacte that i have cahnged the state!!... **** without this method value will not be update dynamically in emulator.
              setState(() {});
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

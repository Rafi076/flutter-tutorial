// scaffold | column | Row | Dialog | bottom sheet | snackbar

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// remove the DEBUG banner from the emulator!!
      title: 'hello',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // to change backgroun color of home
        backgroundColor: Colors.amber[50],

        // to add an appbar on the top of the screen
        appBar: AppBar(
          backgroundColor: Colors.amber[70],
          title: Text(
            'Main screen',
            style: TextStyle(color: Colors.black),
          ),

          // to set an icon in the leading position of the app (not in action)
          leading: Icon(
            Icons.home,
            color: Colors.black87,
          ),

          // to put more icon with actiion
          actions: [
            IconButton(
                onPressed: () {
                  // A Snackbar in Flutter provides brief feedback about an operation by showing a message at the bottom of the screen.
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.amberAccent,
                    content: Text(
                      'ADDED!!',
                      style: TextStyle(color: Colors.black),
                    ),
                    duration: Duration(seconds: 2),
                  ));
                },
                icon: Icon(Icons.add)), //add button
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // aleret dialog box shows beutiful alart box!!
                          title: Text('Confimation dialog box'),
                          content: Text('Is that decreased ? '),

                          // action inside the dialog box ****
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Handle "Yes" action inside the dialog box
                                Navigator.of(context).pop();
                              },
                              child: Text('Yes'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Handle "No" action inside the dialog box
                                Navigator.of(context).pop();
                              },
                              child: Text('No'),
                            ),
                          ],
                        );
                      });
                },
                icon: Icon(Icons.remove)),

            /// remove button
          ],
        ),

        //// *****  to contain multiple widget inside the child we can use coloumn or row
        body: Center(
          child: Column(
            // column use fo vertical widget
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize
                .min, // main indicate : inside the colmun widget get the minimum space to print
            children: [
              Text('hello'),
              Text('rafi'),
              Text('whatspp'),

              // this row inside the column & children
              Row(
                // row use for horigrntal widget
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('hi there '),
                  Text('--'),
                  Text('whatspp'),

                  // this column inside the row & in his children
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('date'),
                      Text('13-5-24'),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}

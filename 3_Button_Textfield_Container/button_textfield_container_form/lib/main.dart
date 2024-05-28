// Button | Textfield | Container | Form | Padding
//  button (ElevatedButtons, TextButton, IconButton, gestureDetector, inkwell)

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// remove the DEBUG banner from the emulator!!
      debugShowCheckedModeBanner: false,

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // *********elevatedButton is look like a small capsul !!*************
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // for button background color
                  //
                  foregroundColor: Colors
                      .black, // to change the colors of text inside the button

                  // to change the shape of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  // to change the text style inside the button
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  padding: EdgeInsets.all(10),
                ),
                onPressed: () {},
                child: Text("Elevated Button"),
              ),

              // ********* TextButton is Just a Text which work as button!! **********
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(221, 126, 5, 5),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  onPressed: () {},
                  child: Text("Text button")),

              // ********* Icon Button is just a Icon of anything *********
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.telegram,
                  color: Colors.blue[300],
                ),
              )

              // ******* GestureDetector in Flutter is used to detect and respond to various touch events and gestures, such as taps, swipes, and long presses, on any widget. It provides a way to capture user interactions and perform actions in response. This makes it essential for creating interactive and responsive UIs.
              ,
              GestureDetector(
                onTap: () {
                  // to do if tap one time
                },
                onDoubleTap: () {
                  // to do if taped double time
                },
                onLongPress: () {
                  // for long press
                },
                child: Column(
                  children: [
                    Text('GestureDetector button'),
                    Icon(Icons.alarm),
                    Row(
                      children: [
                        Text('This is row'),
                      ],
                    )
                  ],
                ),
              ),

              // inkwell kinda long button (Splash)
              InkWell(
                splashColor: Colors.blue[300],
                radius: 80, // form icon
                borderRadius: BorderRadius.circular(120), // fomr boreder
                onTap: () {
                  // to do if tap one time
                },
                onDoubleTap: () {
                  // to do if taped double time
                },
                onLongPress: () {
                  // for long press
                },
                child: Column(
                  children: [
                    Text('InkWell'),
                    Icon(Icons.alarm),
                    Row(
                      children: [
                        Text(
                          'This is row',
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // textField
              Padding(
                padding: EdgeInsets.only(left: 50, right: 20),
                // we can use TextFormField() (where a useful widget is validator: where we can check if enterd item is valid or not})
                // or we can use TextField()
                child: TextField(
                  maxLength: 20,
                  scrollPadding: EdgeInsets.all(10),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                  // for decoration in field
                  decoration: InputDecoration(
                      hintText: 'Enter the name',
                      hintStyle: TextStyle(fontSize: 20),
                      label: Text("your name"),

                      // to create a boreder all side of textfield
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 4),
                      ),
                      // to create foucused border in al sides of text field:  it work when we click on text field
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),

                      // enable border

                      // disable border

                      // prefix / sufix icon
                      prefixIcon: Icon(Icons.remove_red_eye),
                      prefixIconColor: Colors.grey[400]),
                ),
              ),

              // Container
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white70, // container color
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 5),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/150'),
                    fit: BoxFit.cover,
                  ),
                  // box shadow for container shadow ********
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  '+ Add photo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

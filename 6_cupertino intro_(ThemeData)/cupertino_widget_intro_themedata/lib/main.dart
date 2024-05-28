// //cuoertino intro || ThemeData
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(IOSStyleApp());
// }

// class IOSStyleApp extends StatelessWidget {
//   const IOSStyleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//         navigationBar: CupertinoNavigationBar(
//           middle: Text('Home'),
//           trailing: CupertinoButton(
//               onPressed: () {}, child: Icon(CupertinoIcons.add)),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CupertinoActivityIndicator(
//                 radius: 20,
//               ),
//               CupertinoSwitch(value: false, onChanged: (value) {})
//             ],
//           ),
//         ));
//   }
// }

// ******************** IOS End Here *****************************************  //

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyles.textButton,
          ),
          // for textfield we use inputDecorationTheme
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red))),
          // for appbar
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.yellow,
              elevation: 5,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ))),
      // for creating bydefault dark theme
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyles.elevatedButton,
                onPressed: () {},
                child: Text('Tap to Edit 1')),
            ElevatedButton(
                style: ButtonStyles.elevatedButton,
                onPressed: () {},
                child: Text('Tap to Edit 2')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {},
                child: Text('Tap to Edit 1')),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {},
                child: Text('Tap to Edit')),
            TextField(),
          ],
        ),
      ),
    );
  }
}

// There can have Hundreds of Button !!
// so we should not create style for each button each time when we creat a button. to overcame this we should
// create a class for this . so that we can access this class from any file!!
// lets create a class for each button !! *********

class ButtonStyles {
  // for elevated Button
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));

  // for TextButton
  static ButtonStyle textButton = TextButton.styleFrom(
    textStyle: TextStyle(fontSize: 25),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
  );
}

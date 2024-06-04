import 'package:flutter/material.dart';
import 'package:life_cycle/home.dart';

void main() {
  runApp(const ClaculatorApp());
}

class ClaculatorApp extends StatelessWidget {
  const ClaculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: const Home(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.red[100], foregroundColor: Colors.black),
          inputDecorationTheme: const InputDecorationTheme(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            contentPadding: EdgeInsets.all(16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),

            // for round button
            // shape: MaterialStateProperty.all<CircleBorder>(
            //   CircleBorder(),
            // ),
            // padding: MaterialStateProperty.all<EdgeInsets>(
            //   EdgeInsets.all(
            //       25), // Adjust the padding to make the button larger or smaller
            // ),
          ))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation/Home.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Settings'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return Home(); // here we can pop to previous page too
                  },
                ));
              },
              child: Text('Back to Previous page'),
            ),
            ElevatedButton(
                onPressed: () {
                  //Navigator.pushAndRemoveUntil() --->> We use this to go from one screen to another screen, eascaping all the screen between them!!
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Home();
                  }), (route) => false);
                },
                child: Text('Go To Home'))
          ],
        ),
      ),
    );
  }
}

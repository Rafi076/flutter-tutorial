import 'package:flutter/material.dart';
import 'package:navigation/Settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.UserName});
  final String UserName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Profile'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(UserName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, 'all the value and information of profile');
              },
              child: Text('Back to Home'),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement is a Flutter method used to replace the current route with a new one.
                  // It removes the current route from the navigation stack and pushes the new route,
                  // preventing the user from navigating back to the previous route.

                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Settings();
                    },
                  ));
                },
                child: Text('Go To Settings'))
          ],
        ),
      ),
    );
  }
}

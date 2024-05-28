import 'package:flutter/material.dart';
import 'package:navigation/Profile.dart';
import 'package:navigation/Settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('HOME'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Here to navigate the route we want to go, we
                //use ==> Navigator.push(context, route)
                //here context indicate where am i!! & route indiacate where i want to go!!!
                // but statless widget we used here (profile, Settings) those are not route. we will have to convert them in route!...
                // To conver them in route we can use two way 1. MaterialPageRoute(builder: build) or 2.CuppertinoPageRoute(builder: build)!!
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ));
              },
              child: Text('Go to settings'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Profile(
                        UserName: 'Rafi',
                      );
                    },
                  )).then((value) {
                    print(value); // all the value and information of profile
                  });
                },
                child: Text('Go To Profile'))
          ],
        ),
      ),
    );
  }
}

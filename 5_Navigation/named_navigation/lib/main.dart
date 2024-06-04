// Navigation (push, pop, replace), removeUntil (without named navigation)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Creating initial route
        initialRoute: '/',
        // routes: {
        //   '/': (context) => const Home(),
        //   '/Settings': (context) => const Settings(),
        //   // '/Profile': (context) => const Profile(),
        // },

        // basically we use--->
        // onGenerateRoute: (settings) {
        //   if (settings.name == '/Profile') {
        //     String userName = settings.arguments as String;

        //     return MaterialPageRoute(builder: (context) {
        //       return Profile(userName: userName);
        //     });
        //   }
        // },

        // We should do it this way to generate routes dynamically
        onGenerateRoute: _generateRoute);
  }

  // this way call Method Extraction
  MaterialPageRoute? _generateRoute(RouteSettings settings) {
    Widget? widget;
    switch (settings.name) {
      case Home.routeName:
        widget = const Home();
        break;
      case Settings.routeName:
        widget = const Settings();
        break;
      case Profile.routeName:
        String userName = settings.arguments as String;
        widget = Profile(userName: userName);
        break;
      default:
        widget = const Home();
    }
    if (widget != null) {
      return MaterialPageRoute(builder: (context) => widget!);
    }
    return null;
  }
}

class Home extends StatelessWidget {
  // there is possibility of get the wrong page name, to avoid that we can const them in class
  static const String routeName = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('HOME'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
              child: const Text('Go to Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Profile.routeName,
                    // arguments: {'name': 'rafi'});
                    arguments: 'rafi');
              },
              child: const Text('Go To Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  static const String routeName = '/Profile';
  const Profile({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    print(userName);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Profile'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username: $userName'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Back to Home'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go To Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  static const String routeName = '/Settings';
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Settings'),
      ),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Back to Previous page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Back to Previous page'),
            ),
          ],
        ),
      ),
    );
  }
}

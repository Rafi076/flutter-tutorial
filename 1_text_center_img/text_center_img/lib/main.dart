// text || center  || image

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          // ******* child can contain one singel wiged like----> text() / icon() / image. etc... *******

          // child: Text(
          //   'Hello rafi this is us embassy from bangladesh. hope you are well. Happy to share that you are selected for US scholarship!!',
          //   textAlign: TextAlign.center,
          //   maxLines: 2,
          //   style: TextStyle(
          //     fontSize: 15,
          //     fontWeight: FontWeight.bold,
          //     backgroundColor: Colors.amber,
          //     color: Colors.black,
          //   ),
          // ),

          // child: Icon(
          //   Icons.video_call,
          //   size: 40,
          //   color: Colors.amber,
          // ),

          // child: Image.network(
          //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqUpBHUQ5yNOcLSK_-YW-K0xkB07H6r4F9x1yQnXTDqwswCep7_5qnjV7l4-8C737LEGU&usqp=CAU',
          //   width: 300,
          //   height: 300,
          //   fit: BoxFit.scaleDown,
          // ),

          // child: Image.asset(folder/name.jpg),   to show this on emulator, we need to update asset in pubspec.yaml

          ),
    );
  }
}

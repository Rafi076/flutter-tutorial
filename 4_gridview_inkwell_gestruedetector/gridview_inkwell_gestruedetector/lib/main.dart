import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello world',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  List<String> studentNames = [
    'Alice Johnson',
    'Bob Smith',
    'Carol White',
    'David Brown',
    'Emily Davis',
    'Frank Wilson',
    'Grace Lee',
    'Henry Taylor',
    'Irene Martinez',
    'Jack Anderson',
    'Alice Johnson',
    'Bob Smith',
    'Carol White',
    'David Brown',
    'Emily Davis',
    'Frank Wilson',
    'Grace Lee',
    'Henry Taylor',
    'Irene Martinez',
    'Jack Anderson',
    'Alice Johnson',
    'Bob Smith',
    'Carol White',
    'David Brown',
    'Emily Davis',
    'Frank Wilson',
    'Grace Lee',
    'Henry Taylor',
    'Irene Martinez',
    'Jack Anderson',
  ];
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // write whatever you want to show on screen
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          'Home screen',
          style: TextStyle(color: Colors.black87),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),

      // to see scrollview of a appps we use a widget name : SingleChildScrollView or also we can use listview
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       // Add your widgets here
      //     ],
      //   ),
      // ),

      // or we can use Listview
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   padding: EdgeInsets.all(50),
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 25,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.call),
      //         alignment: Alignment.topRight,
      //       ),
      //     )
      //   ],
      // ),

      // ListView.builder in Flutter efficiently creates long or infinite lists by only building the visible items, which improves performance and reduces memory usage.
      // It allows for dynamic content generation, handling large datasets seamlessly. This widget separates the data source from the item builder, making the code cleaner and more maintainable.
      // body: ListView.builder(
      //   itemCount: widget.studentNames.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ListTile(
      //         title: Text(widget.studentNames[index]),
      //       ),
      //     );
      //   },
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: widget.studentNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        widget.studentNames[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
            ),

            // gridview.builder:
            // GridView.builder in Flutter is used to create a scrollable, 2D array of widgets efficiently by building only the visible items on demand.
            // It improves performance and memory usage for large grids.
            // This widget is ideal for displaying a dynamic number of items in a grid layout while separating the data source from the UI.

            GridView.builder(
                shrinkWrap: true,
                itemCount: widget.studentNames.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text('Roll - ${index + 1}'),
                      Text(widget.studentNames[index])
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

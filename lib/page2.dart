import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2"),
      ),
      drawer: MyDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(children: [
            Center(child: Text("alerts")),
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Hi this is message '),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.fixed,
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("show snck bar")),
          ])
        ],
      ),
    );
  }
}

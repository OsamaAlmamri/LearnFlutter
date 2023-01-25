import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({Key? key}) : super(key: key);

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {

var my_time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateAndTime"),
      ),
      drawer: MyDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ElevatedButton(onPressed: (){

            setState(() {
              my_time=DateTime.now().minute;
              my_time=DateTime.now().day;
              my_time=DateTime.now().year;
              my_time=DateTime.now();
              my_time=DateTime.now().add(Duration(days: 1,minutes: 50));
              my_time=DateTime.now().subtract(Duration(days: 1,minutes: 50));
            });
          }, child: Text("print time")),

          Text("$my_time")
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'package:jiffy/jiffy.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({Key? key}) : super(key: key);

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {

var my_time;
var my_time_format;

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

          Text("$my_time"),
          ElevatedButton(onPressed: ()async{
            await Jiffy.locale("ar");
            setState(() {
              my_time=DateTime.now();

             my_time_format= Jiffy().yMMMMEEEEdjm; //
             my_time_format= Jiffy().E; //day
             my_time_format= Jiffy().year; //day
              // print()

            });
          }, child: Text("print my_time_format")),

          Text("$my_time_format"),
        ],
      ),
    );
  }
}

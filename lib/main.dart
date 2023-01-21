import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("osama"),
        ),
        drawer: Drawer(
          child: Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 4,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [Icon(Icons.home), Text('home')],
                    )),
                Divider(
                  height: 2,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [Icon(Icons.home), Text('cat')],
                    )),
                Divider(
                  height: 2,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [Icon(Icons.home), Text('uu')],
                    )),
              ],
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      
      children:[
       Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
          Stack(
            alignment: Alignment.center,
            children: [
            Container(color:Colors.brown ,width: 200, height: 200,),
            Container(color:Colors.red ,width: 150, height: 150,),
            Container(color:Colors.blue ,width: 100, height: 100,),
          ],),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
           
            decoration: BoxDecoration(
            color:Colors.amber,
            border: Border.all(color: Colors.black,width: 10),
            // borderRadius: BorderRadius.circular(20)
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight:  Radius.circular(50))
            ),
            child: Text(
              "data 2",
              style: TextStyle(color: Colors.lightBlue, fontSize: 95.5, shadows: [
                Shadow(color: Colors.red, blurRadius: 10, offset: Offset(5, 5))
              ]),
            ),
          ),
          Container(
             decoration: BoxDecoration(
            color:Colors.amber,
            border: Border(left: BorderSide(color: Colors.black,width: 10)),
            ),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "data",
              style: TextStyle(
                  color: Color(0xff885544),
                  fontSize: 15.5,
                  decoration: TextDecoration.lineThrough),
            ),
          ),
          Text(
            "data",
            style: TextStyle(
                color: Colors.green[800],
                fontSize: 15.5,
                fontWeight: FontWeight.w900),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 2),
    image: DecorationImage(
      fit: BoxFit.fill,
                // image: NetworkImage("https://t3.ftcdn.net/jpg/04/12/82/16/360_F_412821610_95RpjzPXCE2LiWGVShIUCGJSktkJQh6P.jpg"),
                image: AssetImage("images/1.jpg"),
    
    )
    
            ),
            child: Text("data")),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(5),
            child: Text("data 5",textAlign:TextAlign.start,)),
          Text("data"),
          Text("data"),
          Image.asset("images/1.jpg",width: double.infinity,fit:BoxFit.fill),
    
          Card(
          
            color: Colors.yellow,
            shape: Border.all(color: Colors.black),
            elevation: 10,
            child: Text("data")),
          Text("data"),
        ],
      ),
    ]);
  }
}

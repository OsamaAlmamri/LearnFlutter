import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late ScrollController sc;

  @override
  void initState() {
    // TODO: implement initState
    sc = new ScrollController();
    sc.addListener(() {
      print(sc.offset);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      return  Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          //leading will remove drawer icon
          leading: Icon(Icons.home),
          leadingWidth: 50,
          actions: [
            IconButton(icon: Icon(Icons.alarm),onPressed: (){}),
            IconButton(icon: Icon(Icons.exit_to_app),onPressed: (){}),


          ],
          elevation: 15,
          shadowColor: Colors.red,
          backgroundColor: Colors.green,
          brightness: Brightness.dark,
        ),

        drawer:MyDrawer(),
        endDrawer: MyDrawer(),

        body:
    ListView(
      controller: sc,
      scrollDirection: Axis.vertical,
      reverse: true,
    //  physics: ClampingScrollPhysics(),
      physics: BouncingScrollPhysics(),

       children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => {
                    sc.jumpTo(sc.position.minScrollExtent)
                  },
                  child: Text("go to buttom"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      textStyle: TextStyle(
                        fontSize: 20,
                      )),
                ),
                ElevatedButton.icon(
                    onPressed: () => {},
                    icon: Icon(Icons.home),
                    label: Text("home")),
                TextButton(onPressed: () => {}, child: Text("home")),
                MaterialButton(
                  onPressed: () => {},
                  shape: Border.all(color: Colors.black, width: 20),
                  color: Colors.red,
                  child: Text("clike me "),
                ),

                InkWell(
                  onTap: () => {print("clice")},
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("custom buttom"),
                        Icon(Icons.phone_android)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => {print("clice")},
                  onDoubleTap: ()=>{},

                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("custom buttom"),
                        Icon(Icons.phone_android)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2)),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "strwbarry Pavalwa Recip ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Text(
                  "Malesuada eius ipsum hac. Tenetur voluptatem.Natus nibh nisl tortor? Occaecati placeat.Quia fames voluptatum dictum adipiscing officiis.",
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                          Text("1 Rexiews")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.food_bank,
                                color: Colors.green,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Food"),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("2.4")
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.food_bank,
                                color: Colors.green,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Food"),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("2.4")
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.food_bank,
                                color: Colors.green,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("Food"),
                              Padding(padding: EdgeInsets.all(10)),
                              Text("2.4")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              Container(
                color: Colors.brown,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: Colors.brown,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 200,
                    height: 200,
                  ),
                ],
              )),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.brown,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text("box 1"),
                color: Colors.brown,
                height: 100,
              ),
              Container(
                child: Text("box 2"),
                color: Colors.red,
                height: 100,
              ),
              Container(
                child: Text("box 3"),
                color: Colors.blue,
                height: 100,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text("box 1"),
                    color: Colors.brown,
                    height: 100,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Text("box 2"),
                    color: Colors.red,
                    height: 100,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text("box 3"),
                    color: Colors.blue,
                    height: 100,
                  )),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 10),
                // borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Text(
              "data 2",
              style:
                  TextStyle(color: Colors.lightBlue, fontSize: 95.5, shadows: [
                Shadow(color: Colors.red, blurRadius: 10, offset: Offset(5, 5))
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border(left: BorderSide(color: Colors.black, width: 10)),
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
                  border: Border.all(color: Colors.red, width: 2),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    // image: NetworkImage("https://t3.ftcdn.net/jpg/04/12/82/16/360_F_412821610_95RpjzPXCE2LiWGVShIUCGJSktkJQh6P.jpg"),
                    image: AssetImage("images/1.jpg"),
                  )),
              child: Text("data")),
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(5),
              child: Text(
                "data 5",
                textAlign: TextAlign.start,
              )),
          Text("data"),
          Text("data"),
          Image.asset("images/1.jpg", width: double.infinity, fit: BoxFit.fill),
          Card(
              color: Colors.yellow,
              shape: Border.all(color: Colors.black),
              elevation: 10,
              child: Text("data")),
          Text("data"),
        ],
      ),
    ]));
  }
}



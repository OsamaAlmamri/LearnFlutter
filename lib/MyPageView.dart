import 'package:flutter/material.dart';

import 'MyDrawer.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class Slides {
  String image;
  String text;
  Slides({required this.image, required this.text});
}

class _MyPageViewState extends State<MyPageView> {
  @override
  List<Slides> slides = [
    Slides(image: "images/osama.jpg", text: "text"),
    Slides(image: "images/one.PNG", text: "text"),
    Slides(image: "images/two.PNG", text: "text"),
    Slides(image: "images/three.PNG", text: "text"),
  ];

  int curent_index = 1;
  late PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    pc = new PageController(initialPage: curent_index, viewportFraction: 1);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page view"),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Container(
              height: 500,
              child: PageView(
                  controller: pc,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    print(index);
                    setState(() {
                      curent_index = index;
                    });
                  },
                  children: slides.map((slide) {
                    return Column(
                      children: [
                        Image.asset(
                          slide.image,
                          fit: BoxFit.fill,
                        ),
                        Text(slide.text)
                      ],
                    );
                  }).toList()),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: slides.map((slide) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child:IconButton(
                        onPressed: () {
                         setState(() {
                            curent_index=slides.indexOf(slide);
                            // pc.jumpToPage(curent_index);
                            pc.animateToPage(curent_index, duration: Duration(seconds: 1), curve: Curves.linear);
                         });
                        },
                        icon: Icon(Icons.circle_rounded,
                        
                            color: slides.indexOf(slide) == curent_index
                                ? Colors.blue
                                : Colors.black),
                      ),
                    );
                  }).toList()),
            )
          ],
        ));
  }
}

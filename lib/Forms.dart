
import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("forms"),
      ),
      drawer: MyDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(children: [

          TextFormField(
            decoration: InputDecoration(
              hintText: "enter your name",
              hintStyle: TextStyle(color: Colors.blue),
              helperMaxLines:2 ,
              suffix: Text("enter name"),
              prefixIcon: Icon(Icons.percent),
            ),
          ),

            TextFormField(
              decoration: InputDecoration(
                  label:Text( "Your Email"),
                  filled: true,
                  fillColor: Color.fromARGB(255, 164, 204, 241),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 3))

              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  label:Text( "Your Email"),
                  filled: true,
                  fillColor: Color.fromARGB(255, 164, 204, 241),
                  enabled: true,
                  
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red,width: 3))

              ),
            ),
            TextFormField(
              cursorColor: Colors.red,
              initialValue: "yemencoder@gmail.com",
              keyboardType: TextInputType.emailAddress,
              maxLength: 50,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                label:Text( "Your Email"),

                icon: Icon(Icons.email),

              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label:Text( "Your age "),
                icon: Icon(Icons.calendar_month),

              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.remove_red_eye_rounded),
                label:Text( "passwoed "),


              ),
            ),    TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                icon: Icon(Icons.remove_red_eye_rounded),
                label:Text( "name "),


              ),
            ),

            TextFormField(
              keyboardType: TextInputType.number,
              maxLines: 3,
              decoration: InputDecoration(
                label:Text( "Describe "),


              ),
            ),


          ])
        ],
      ),
    );
  }
}

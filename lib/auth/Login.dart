import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;

  Future<void> saveData(email)async {
    final SharedPreferences prefs = await _prefs;

    setState(() {
      _counter = prefs.setString('email', email).then((bool success) {
        return email;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("تسجيل الدخول"),
          ),
          body: ListView(scrollDirection: Axis.vertical, children: [
            Form(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          radius: 50,
                          // child: Text("Osama"),
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage('images/osama.jpg'),
                        ),
                      ),
                      // decoration: BoxDecoration,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          label: Text("اسم المستخدم"),
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text("كلمة السر"),
                          prefixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("ليس لديك حساب من قبل ",style: TextStyle(fontFamily: "NotoSansArabic"),),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('sign_in');
                              },
                              child: Text("انشاء حساب"))
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                         await saveData(email.text);
                          Navigator.of(context).pushReplacementNamed('home');
                        },
                        child: Text("تسجيل الدخول "))
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}

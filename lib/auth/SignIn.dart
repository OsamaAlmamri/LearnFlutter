import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل حساب جديد"),
      ),
      body: Form(

        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child:   CircleAvatar(
                  radius:50,
                  // child: Text("Osama"),
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('images/osama.jpg'),
                ),
                // decoration: BoxDecoration,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text("اسم المستخدم"),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 2))
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(

                obscureText: true,
                decoration: InputDecoration(

                    label: Text("كلمة السر"),
                    prefixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 2))
                ),
              ),
              SizedBox(height: 10,),
              Container(child: Row(children: [
                Text("هل لديك حساب من قبل "),
                TextButton(onPressed: (){}, child: Text("انشاء حساب"))
              ],),),

              ElevatedButton(onPressed: (){}, child: Text("تسجيل الدخول "))
            ],
          ),
        ),
      ),
    );
  }
}

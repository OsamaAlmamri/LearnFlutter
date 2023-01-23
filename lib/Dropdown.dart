import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Dropdown extends StatefulWidget {
const Dropdown({ Key? key }) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  var seletedCountry;
  var gender="male";
  bool ar_lang=false, en_lang=false,id_dark=false;
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          title: Text(" dropdown"),
        ),
  
        drawer:MyDrawer(),
     
        body:      ListView(scrollDirection: Axis.vertical, children: [
      Column(
        children: [
          Center(child: Text("dropdown")),
          Container(
            margin: EdgeInsets.all(10),
      
            
            padding: EdgeInsets.all(10),
            child: DropdownButton(
              itemHeight: 50,
              hint: Text("select Country",textAlign: TextAlign.start,textDirection: TextDirection.ltr,),
              isExpanded: true,
              
              icon:Icon(Icons.ac_unit_outlined),
              dropdownColor: Colors.blue,
              underline: Divider(thickness: 2,),
              items: ["USA","YEM","KSA"].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(), onChanged: (val){
setState(() {
  seletedCountry=val.toString();
});
            },value: seletedCountry,),
          ),
           Container(
            margin: EdgeInsets.all(10),
      
            
            padding: EdgeInsets.all(10),
            child: Column(children: [

              Text("chooce your Langueges"),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Arabic"),
                Checkbox(value: ar_lang, onChanged: (val){
                  setState(() {
                    ar_lang=val!;
                  });
                })
              ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("English"),
                Checkbox(value: en_lang, onChanged: (val){
                  setState(() {
                    en_lang=val!;
                  });
                })
              ],),

  Text("Checkbox List Tile"),
              CheckboxListTile( value: ar_lang, 
              title: Text("Arabic"),
              subtitle:Text( "arabic language"),
              secondary: Icon(Icons.flag),
                selected: ar_lang,
              isThreeLine: true,
              onChanged: (val){
                setState(() {
                       ar_lang=val!;
                });
              }),
              CheckboxListTile( value: en_lang, 
              title: Text("English"),
               subtitle:Text( "English language"),
                 secondary: Icon(Icons.flag),
                 isThreeLine: true,
                 selected: en_lang,
              onChanged: (val){
                setState(() {
                       en_lang=val!;
                });
              }),
                 Text("chooce your gender"),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Male"),
                Radio(value: "male", 
                groupValue: gender,
                onChanged: (val){
                  setState(() {
                    gender=val!;
                  });
                })
              ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Female"),
                Radio(value: "female",groupValue:gender, onChanged: (val){
                  setState(() {
                    gender=val!;
                  });
                })
              ],),

  Text("Radio List Tile"),
              RadioListTile( value: "male", 
              groupValue: gender,
              title: Text("Male"),
              subtitle:Text( "male gender"),
              secondary: Icon(Icons.male),
                selected: gender=="male",
              isThreeLine: true,
              onChanged: (val){
                setState(() {
                       gender=val!;
                });
              }),
              RadioListTile( value: "female", 
              groupValue: gender,
              title: Text("Female"),
              subtitle:Text( "female gender"),
              secondary: Icon(Icons.female),
                selected: gender=="female",
              isThreeLine: true,
              onChanged: (val){
                setState(() {
                       gender=val!;
                });
              }),

              Text("Switch "),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Dark Mode"),
                Switch(value: id_dark, onChanged: (val)=>{
                setState(() {
                       id_dark=val!;
                })
                },),
         
              ],),
              SwitchListTile(value: id_dark, 
              title:   Text("Dark Mode"),
              secondary: Icon(Icons.dark_mode,color: id_dark?Colors.yellow:Colors.black,),
              
              
              
              onChanged: (val)=>{
                setState(() {
                       id_dark=val!;
                })
                },),
            
            ],)),


      ])],),
      
    );
  }
}
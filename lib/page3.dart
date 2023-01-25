import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  @override
  void initState() {
    // TODO: implement initState
    get_date([]);
    super.initState();
  }

   List test =[];
  void get_date(List<String> arguments) async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url =
    Uri.https('shopadmin.erum.ae', '/products', {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("response.body");
      print(response.body);
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['totalItems'];
      print(jsonResponse['data']);
      setState(() {
        test=jsonResponse['data'];
      });
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page 3"),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              get_date([]);
            }, child: Text("get Data")),
            Container(
              height: 700,
              child:(test.length==0)?CircularProgressIndicator() : ListView.builder(
                  itemCount: test.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Text("${test[i]['name']['ar']}"),
                      subtitle: Text("${test[i]['description']['ar']}"),
                      // trailing: Text("${test[i]['id']}"),
                      leading: Image.network("https://shopadmin.erum.ae${test[i]['image']}",fit: BoxFit.cover,),
                    );
                  }),
            ),
          ],
        ));
  }
}

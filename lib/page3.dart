import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Page3 extends StatelessWidget {
  List test = [
    {
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },
    {
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },{
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },
    {
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },{
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },
    {
      "id": 1,
      "first_name": "Jeanette",
      "last_name": "Penddreth",
      "email": "jpenddreth0@census.gov",
      "gender": "Female",
      "ip_address": "26.58.193.2"
    },
    {
      "id": 2,
      "first_name": "Giavani",
      "last_name": "Frediani",
      "email": "gfrediani1@senate.gov",
      "gender": "Male",
      "ip_address": "229.179.4.212"
    },
    {
      "id": 3,
      "first_name": "Noell",
      "last_name": "Bea",
      "email": "nbea2@imageshack.us",
      "gender": "Female",
      "ip_address": "180.66.162.255"
    },
    {
      "id": 4,
      "first_name": "Willard",
      "last_name": "Valek",
      "email": "wvalek3@vk.com",
      "gender": "Male",
      "ip_address": "67.76.188.26"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page 3"),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
            itemCount: test.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text("${test[i]['first_name']}"),
                subtitle: Text("${test[i]['email']}"),
                trailing: Text("${test[i]['gender']}"),
                leading: Text("${test[i]['id']}"),
              );
            }));
  }
}

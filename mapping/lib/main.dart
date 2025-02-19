import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var arrData = [
    {
      "name" : "Manish",
      "age" : 25,
      "address" : "Pune",
    },
    {
      "name" : "John",
      "age" : 30,
      "address" : "New York",
    },
    {
      "name" : "Jane",
      "age" : 28,
      "address" : "Los Angeles",
    },
    {
      "name" : "David",
      "age" : 32,
      "address" : "Chicago",
    },
    {
      "name" : "Manish",
      "age" : 25,
      "address" : "Pune",
    },
    {
      "name" : "John",
      "age" : 30,
      "address" : "New York",
    },
    {
      "name" : "Jane",
      "age" : 28,
      "address" : "Los Angeles",
    },
    {
      "name" : "David",
      "age" : 32,
      "address" : "Chicago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Mapping"),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) =>
          ListTile(
            leading: Icon(Icons.account_circle,
            size: 35,),
            title: Text(value['name'].toString()),
            subtitle: Text(value['address'].toString()),
            trailing: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.greenAccent,
              child: Text(value['age'].toString())),
          )
          ).toList()
        ),
      )
    );
  }
}

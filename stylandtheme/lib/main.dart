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
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Style and Theme"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Hello World", style: Theme.of(context).textTheme.headline1,),
          Text("Hello World", style: Theme.of(context).textTheme.subtitle1),
          Text("Hello World", style: Theme.of(context).textTheme.headline1),
          Text("Hello World", style: Theme.of(context).textTheme.subtitle1),
        ],
      )
    );
        }
}

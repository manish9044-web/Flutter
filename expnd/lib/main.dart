import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        
        title: Text("Expanded Widgets"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: 50,
            height: 100,
            color: Colors.red,
          ),
           Expanded(
            flex: 2,
             child: Container(
              // width: 50,
              height: 100,
              color: Colors.black,
                       ),
           ),
           Expanded(
            flex: 4,
             child: Container(
              // width: 50,
              height: 100,
              color: Colors.blue,
                       ),
           ),
           Container(
            // width: 50,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
      
      );
  }
}

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
      title: 'InkWell',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inkwell = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("InkWell Widget"),
    ),
    body: Center(
      child:
          InkWell(
            onTap: (){
              print("InkWell onTap Clicked");
            },
            onLongPress: () {
              print("InkWell onLongPress Clicked");
            },
            onDoubleTap: () {
              print("InkWell onDoubleTap Clicked");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple,
              child: Center(
                child: Text(
                  "inkwell",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
               
              ),
          ),
    )
    )
  );
}



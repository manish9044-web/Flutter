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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Scroll View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

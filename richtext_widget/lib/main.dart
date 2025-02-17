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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.blueAccent,
        title: const Text("RichText"),
        centerTitle: true,
      ),
      body:  Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: "Hello, ", style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "World!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.blue)),
              TextSpan(text: " This is a test ", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
              TextSpan(text: "with rich text!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.blue))
            ],
          )),
      )
    );
  }
}

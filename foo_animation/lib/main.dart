import 'package:flutter/material.dart';
import 'package:foo_animation/Myanimatedcontaner.dart.dart';
import 'package:foo_animation/listwheel_scrollview.dart';
import 'package:foo_animation/myanimatedopacity.dart';
import 'package:foo_animation/mycrossfade.dart';

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
      title: 'Animated Container',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animatation Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Animatopns"),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: (){
                // Navigate to the AnimatedContainer page
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
              }, 
              child: Text("Animated Container")
              ),
              SizedBox(height: 24), 
              ElevatedButton(
              onPressed: (){
                // Navigate to the AnimatedContainer page
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
              }, 
              child: Text("Animated Opacity")
              ),
              SizedBox(height: 24), 
              ElevatedButton(
              onPressed: (){
                // Navigate to the AnimatedContainer page
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyCrossFade()));
              }, 
              child: Text("Cross Fade")
              ),
              SizedBox(height: 24), 
              ElevatedButton(
              onPressed: (){
                // Navigate to the AnimatedContainer page
                Navigator.push(context, MaterialPageRoute(builder: (context) => Wheel()));
              }, 
              child: Text("ListWheelScrollView")
              ),// Add some vertical space between buttons
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({super.key});


  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {

  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 2),
              curve: Curves.easeIn,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 100,
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){
                if(isVisible){
                  myOpacity = 0.0; //invisible
                  isVisible = false;
                }else{
                  myOpacity = 1.0; //visible
                  isVisible = true;
                }
                
                setState(() {
                  myOpacity = 0.0;
                });
              }, 
            child: Text("Animated Opacity"))
          ],
        ),
      ),
      
      );
    
  }
}
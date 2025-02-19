import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  // const MyHomePage({super.key, r});
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.easeInCirc,
              // color: bgColor,
              duration: Duration(seconds: 2),
              decoration: myDecor,
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    //toggle
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      myDecor = BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25));
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      myDecor = BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15));
                      flag = true;
                    }
                  });
                },
                child: Text('Animate')),
          ],
        ),
      ),
    );
  }
}

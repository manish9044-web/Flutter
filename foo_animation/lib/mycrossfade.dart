import 'package:flutter/material.dart';

class MyCrossFade extends StatefulWidget {
  const MyCrossFade({super.key});

  @override
  State<MyCrossFade> createState() => _MyCrossFadeState();
}

class _MyCrossFadeState extends State<MyCrossFade> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 4), (){
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

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
            AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.blue.shade400,
                  width: 300,
                  height: 300,
                ),
                secondChild: Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 250,
                  height: 250,
                ),
                sizeCurve: Curves.fastOutSlowIn,
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2)),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  reload();
                },
                child: Text("Cross fade Animation"))
          ],
        ),
      ),
    );
  }
}

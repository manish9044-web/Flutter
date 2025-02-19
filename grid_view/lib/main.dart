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
    var arrColors =[
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.teal,
      Colors.indigo,
      Colors.brown,
      Colors.cyan,
      Colors.deepOrange,
      Colors.lightBlue,
      Colors.lightGreen,
      Colors.amber,
      Colors.deepPurple,
      Colors.blueGrey,
      Colors.brown,
      Colors.grey,
      Colors.pink,
      Colors.teal,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.amber,
      Colors.deepPurple,
      Colors.blueGrey,
      Colors.brown,
      Colors.grey,
      Colors.pink,
      Colors.teal,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                    Container(color: arrColors[0],),
                    Container(color: arrColors[1],),
                    Container(color: arrColors[2],),
                    Container(color: arrColors[3],),
                    Container(color: arrColors[4],),
                    Container(color: arrColors[5],),
                    Container(color: arrColors[6],),
                    Container(color: arrColors[7],),
                    Container(color: arrColors[8],),
                    Container(color: arrColors[9],),
                    
                ],
                ),
            ),
              SizedBox(height: 15,),
              Container(
                height: 200,
                child: GridView.extent(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 100,
                  children: [
                    Container(color: arrColors[10],),
                    Container(color: arrColors[11],),
                    Container(color: arrColors[12],),
                    Container(color: arrColors[13],),
                    Container(color: arrColors[14],),
                    Container(color: arrColors[15],),
                    Container(color: arrColors[16],),
                    Container(color: arrColors[17],),
                  ],),
              ),
              SizedBox(height: 15,),
              Container(
                height: 500,
                child: GridView.builder(
                  itemCount: arrColors.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10
                  ),
                  itemBuilder: (context, index) {
                    return Container(color: arrColors[index],);
                  },
                  padding: EdgeInsets.all(10),
                ),
              ),
          ],
        ),
      )
    );
  }
}

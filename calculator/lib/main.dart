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
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController no1Controller = TextEditingController();
    TextEditingController no2Controller = TextEditingController();

    var result ="";
  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Calculator"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: no1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter numbers',
                  ),
                ),
                SizedBox(height: 8,),
                TextField(
                  controller: no2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter numbers',
                  ),
                ),
                // SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
            
                          var sum = no1+no2;
            
                          result = "The sum of $no1 amd $no2 is $sum";
            
                          setState(() {
                            print(result);
                          });
            
                        }, 
                        child: Text("ADD")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          
                          var diff = no1-no2;
                          
                          result = "The difference of $no1 and $no2 is $diff";
                          
                          setState(() {
                          print(result);
                          });
                        }, 
                        child: Text("Sub")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          
                          var prod = no1*no2;
                          
                          result = "The product of $no1 and $no2 is $prod";
                          
                          setState(() {
                          print(result);
                          });
                        }, 
                        child: Text("Multi")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          
                          var prod = no1/no2;
                          
                          result = "The $no1 can be divided by $no2 num is $prod";
                          
                          setState(() {
                          print(result);
                          });
                        }, 
                        child: Text("/")),
                            ],
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(result,
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ]
                  ),
          ), 
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

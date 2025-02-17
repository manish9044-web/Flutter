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

    var arrnames = ['Raman', 'Manish', 'Rajesh', 'John', 'James', 'Ram', 'Shayam'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),    
      body: ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index+1}',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
          title: Text(arrnames[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
          subtitle: Text('This is subtitle'),
          trailing: Icon(Icons.add),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 20, thickness: 1,);
        },
       itemCount: arrnames.length,
       )


      // ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(arrnames[index],
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     ); 
      //   },
      //   itemCount: arrnames.length,
      //   itemExtent: 50,
      //   scrollDirection: Axis.horizontal,
      //   ),
        
      // ListView(
      //   children: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("One",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("Two",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("Three",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("Four",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("Five",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text("Six",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //   ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

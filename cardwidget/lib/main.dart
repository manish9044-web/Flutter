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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title = 'Card Widget'});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[500],
                  radius: 108,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fthezoosociety.org%2Fproduct%2Fpeacock%2F&psig=AOvVaw0Lof8xh_YH5b0ueELwTl7I&ust=1736928321704000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIjbg7Pg9IoDFQAAAAAdAAAAABAP"),
                    radius: 100,
                  ),
                ),
                SizedBox(height: 10,),
                Text("Peacock",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: 10,),
                Text("The Indian peafowl or blue peafowl (Pavo cristatus), a large and brightly coloured bird, is a species of peafowl native to South Asia, but introduced in many other parts of the world.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w400
                ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: (){
                      print("Button Pressed");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green[500]),
                    ),
                     child: Padding(padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.touch_app),
                        Text("Visit")
                      ],
                    ),),
                )
                )
              ],
            ),
          ),
        )
        ),
      )
    );
  }
}

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({super.key, });

  String dropdownvalue = "Profile";
  var items = ['Profile', 'Settings', 'Account','Go Premium','Logout'];


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Text Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
                TextButton(
                  onPressed: (){
                    print("Text Button Clicked");
                  }, 
                  child: Text('Click Me!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  ),
                          ),
              ],
            ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Elevated Button',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        print("Elevated Button Clicked");
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        elevation: 10 
                      ),
                      child: Text('Click Me!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Outlined Button',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    ),
                    OutlinedButton(
                      onPressed: (){
                        print("Outlined Button Clicked");
                      },
                      // style: OutlinedButton.styleFrom(
                      //   backgroundColor: Colors.red, 
                      //   side: BorderSide(color: Colors.blue, width: 2),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      // ),
                      child: Text('Click Me!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Icon Button',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    child: Center(
                      child: IconButton(
                        onPressed: (){
                          print("Icon Button Clicked");
                        },
                        icon: Icon(Icons.add),
                        iconSize: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Dropdown Button",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    ),
                    DropdownButton(
                      focusColor: Colors.blue,
                      value: dropdownvalue,
                      icon: Icon(Icons.arrow_drop_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          ),
                    
                        );
                      }).toList(),
                      onChanged: (String? newValue){
                        setState((){
                          dropdownvalue = newValue!;
                        });
                      }),
                  ],
                ),),
                  SizedBox(height: 15,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Floating Action Button",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        ),
                        FloatingActionButton(
                          onPressed: (){
                            print("Floating Action Button Clicked");
                          }
                          ,child: Icon(Icons.add),
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Popup Menu Button",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        ),
                        SizedBox(width: 10,),
                        PopupMenuButton(
                          itemBuilder: (context)=> [
                            PopupMenuItem(
                              child: Text('Home'),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text('Settings'),
                              value: 2,
                            ),
                            PopupMenuItem(
                              child: Text('Profile'),
                              value: 3,
                            ),
                          ],
                          ),
                      ],
                    ),)

        ],
      ),
    
    );
  }
  
  void setState(Null Function() param0) {}
}

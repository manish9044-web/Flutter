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
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("TextField"),
      ),
      body: Center(
        
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.orangeAccent,
                    width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.black45,
                    width: 2)
                  ),
                  suffixIcon: const Icon(Icons.email),
                  labelText: "Email"
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                keyboardType: TextInputType.phone,
                controller: passController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.orangeAccent,
                    width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.black45,
                    width: 2)
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  labelText: "Password",
                ),
                obscureText: true,
                obscuringCharacter: '*',
              ),
              const SizedBox(height: 25,),
              ElevatedButton(
                onPressed: (){
                  String uemail = emailController.toString();
                  String upass = passController.toString(); 

                  print("Email: $uemail, upass: $upass") ;        
                }, 
                child: const Text("Login"))
            ],
          
          ),
        ),
      ),
      
      ); // This trailing comma makes auto-formatting nicer for build methods.
    
  }
}

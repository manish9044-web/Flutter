import 'package:flutter/material.dart';
import 'package:project1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name  = "Flutter Course";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Application"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to the $days days of $name"),
          ),
        ),
        drawer:  const MyDrawer(),
      );
  }
}
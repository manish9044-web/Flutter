import 'package:flutter/material.dart';

class Contain extends StatefulWidget {
  const Contain({super.key});

  @override
  State<Contain> createState() => _ContainState();
}

class _ContainState extends State<Contain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
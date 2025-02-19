import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        child: Hero(
          tag: 'background', 
          child: Image.network('https://picsum.photos/250?image=9',
          )
          ),
      ),
      
    );
  }
}
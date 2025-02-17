import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({super.key});

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScrollView'),
      ),
      body: ListWheelScrollView(
        itemExtent: 40, 
        clipBehavior: Clip.antiAlias,
        children: [
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 1',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 2',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 3',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 4',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 5',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 6',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Item 7',
            style: TextStyle(fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 15,),
        ]),);
  }
}
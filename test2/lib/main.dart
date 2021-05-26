import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Tharushi"),
      ),
      body: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    ),
    );
  }

}
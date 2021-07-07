import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(),

  ), //DevicePreview
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tharushi'),
      ),

      body: Center(
        child: Container(

          // transform: Matrix4.rotationZ(0.3),
          // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          margin: EdgeInsets.all(20.0),
          height: 400.0,
          width: 200.0,
          alignment: Alignment.center,
          // width: double.infinity,
          color: Color(0xff00ff72),
          child: Text(
            'Tharushi Dharmasiri',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );

      }

}

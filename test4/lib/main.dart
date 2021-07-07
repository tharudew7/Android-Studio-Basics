import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Tharushi',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tharushi"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          ],
          // flexibleSpace: Image.asset("assests/first.jpg",
          //   fit: BoxFit.cover,
          // ),
          bottom:  TabBar(
          tabs: [
            Tab(  icon: Icon(Icons.directions_car),
            text: 'Tab 01'
          ),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike),text: 'Bikes',),
            Tab(icon: Icon(Icons.account_balance_wallet)),
      ],
      ),
          elevation: 22.0,
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
            tab1(),
            Tab(icon: Icon(Icons.directions_transit)),
            tab03(),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
    );
  }
  Widget tab1() {
    return Container(
      child: Center(
        child: Text("Tharushi"),
      )
    );
  }
}

Widget tab03()
{
  return Container(
    child: Center(
      child: Text('Tharu'),
    ),
  );
}

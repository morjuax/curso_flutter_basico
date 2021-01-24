import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Matanga app'),
        ),
        body: Container(
            child: Center(
              child: Text(
                'Mi primer widget',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none),
              ),
            )
        ),
      )
    );
  }
}


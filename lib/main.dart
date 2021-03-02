import 'package:curso_flutter_basico/controllers/themeController.dart';
import 'package:curso_flutter_basico/ui/pages/contact_datail_page.dart';
import 'package:curso_flutter_basico/ui/pages/form_contact_page.dart';
import 'package:curso_flutter_basico/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  ThemeController _controller = ThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _controller.isDark,
        builder: (context, value, child){
      return MaterialApp(
          routes: {
            'contactDetail': (context) => ContactDetailPage(),
            'formContact': (context) => FormContactPage()
          },
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: value ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage()
      );
    });
  }
}

// Column, ListView, row
// Stack, grid

// List Button
// * FlatButton
// * RaisedButton
// * OutlineButton

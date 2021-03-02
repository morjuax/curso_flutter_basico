import 'package:curso_flutter_basico/ui/pages/contact_datail_page.dart';
import 'package:curso_flutter_basico/ui/pages/form_contact_page.dart';
import 'package:curso_flutter_basico/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // error nickname data === null

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'contactDetail': (context) => ContactDetailPage(),
        'formContact': (context) => FormContactPage()
      },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage()
    );
  }
}

// Column, ListView, row
// Stack, grid

// List Button
// * FlatButton
// * RaisedButton
// * OutlineButton

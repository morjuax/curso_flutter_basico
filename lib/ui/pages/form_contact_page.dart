import 'package:flutter/material.dart';

class FormContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // para quitar el boton de atras
        centerTitle: true,
        title: Text('New Contact')
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            // Navigator.of(context).pop();
            Navigator.pop(context);
          },
          child: Text('go back'),
        ),

      ),
    );
  }
}

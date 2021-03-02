import 'package:curso_flutter_basico/controllers/main_controller.dart';
import 'package:curso_flutter_basico/ui/pages/form_contact_page.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String titleButton;

  @override
  void initState() {
    super.initState();
    this.titleButton = 'Add contact';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pressButton();
        // setState(() {
        //   this.titleButton = 'New title button';
        // });
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return FormContactPage();
        // }));
        Navigator.pushNamed(context, 'formContact');
      },
      onLongPress: () {
        print('presionado largo del boton');
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.red),
            border: Border.all(
                color: Theme.of(context)
                    .primaryColor), // accediendo al color del tema
            borderRadius: BorderRadius.circular(8.0)),
        child: Center(
          child: Text(
            this.titleButton,
            style: TextStyle(
                // color: Colors.red,
                color: Theme.of(context).primaryColor,
                fontSize: 20.0),
          ),
        ),
      ),
    );
    ;
  }
}

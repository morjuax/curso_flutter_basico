import 'package:curso_flutter_basico/controllers/main_controller.dart';
import 'package:curso_flutter_basico/controllers/themeController.dart';
import 'package:curso_flutter_basico/ui/pages/form_contact_page.dart';
import 'package:curso_flutter_basico/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  ValueNotifier<String> titleButton = ValueNotifier<String>('Add Contact');
  ThemeController _controller = ThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          titleButton.value = 'New title notifier';
          pressButton();
          _controller.changeTheme();
          Navigator.pushNamed(context, 'formContact');
        },
        onLongPress: () {
          print('presionado largo del boton');
        },
        child: ValueListenableBuilder(
          valueListenable: titleButton,
          builder: (context, value, child) {
            return Container(
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
                  value,
                  style: TextStyle(
                      // color: Colors.red,
                      color: Theme.of(context).primaryColor,
                      fontSize: 20.0),
                ),
              ),
            );
          },
        ));
  }
}

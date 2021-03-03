import 'package:curso_flutter_basico/controllers/contactListController.dart';
import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_buttons.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatelessWidget {

  ContactListController controller = ContactListController.instance;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller.contacts,
        builder: (context, value, child) {
      return Container(
        child: Column(
          children: [
            CustomButton(),
            // buttons(),
            Expanded(
              child: ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, picker){
                  return  Dismissible(
                      background: Container(color: Colors.red),
                      onDismissed: (direction) => value.removeAt(picker),
                      key: Key(picker.toString()),
                      child: CustomListTile(
                        person: value[picker],
                      ));
                },
              ),
            )
          ],
        ),
      );
    });
  }
}

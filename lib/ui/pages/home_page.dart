import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_buttons.dart';
import 'package:curso_flutter_basico/ui/widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

List<PersonModel> persons = [
  person1,
  person2,
  person3,
  person1,
  person2,
  person3,
  person1,
  person2,
  person3,
  person1,
  person2,
  person3
];

class HomePage extends StatelessWidget {
  String title = 'Matanga app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button float pressed!');
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            IconButton(icon: Icon(Icons.image), onPressed: () {}),
            // IconButton(icon: Icon(Icons.message), onPressed: () {})
          ],
          title: Text(this.title),
        ),
        body: Column(
          children: [
            CustomButton(),
            // buttons(),
            Expanded(
              child: ListView(
                children: [
                  for (int i = 0; i < persons.length; i++)
                    CustomListTile(
                      person: persons[i],
                    )
                ],
              ),
            )
          ],
        ));
  }
}



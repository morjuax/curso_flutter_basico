import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final PersonModel person;

  CustomListTile({this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(person.iconLeft),
      trailing: SizedBox(
        width: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(person.iconRight),
            SizedBox(width: 8.0,),
            Icon(Icons.call)],
        ),
      ),
      title: Text(person.name),
      subtitle: Text(person.description),
    );
  }
}
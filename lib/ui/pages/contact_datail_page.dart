import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  ContactDetailPage();

  @override
  Widget build(BuildContext context) {
    final ContactDetailArgs args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.person.name),
        centerTitle: true,
      ),
      body: Center(
        child: Text(args.content),
      ),
    );
  }
}

class ContactDetailArgs {
  final PersonModel person;
  final String content;

  ContactDetailArgs({this.person, this.content='Content'});
}

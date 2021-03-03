import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:flutter/cupertino.dart';



class ContactListController {
  static List<PersonModel> persons = [
    person1,
    person2,
    person3,
    person2,
  ];

  static final ContactListController instance = ContactListController._();
  ContactListController._();

  ValueNotifier<List<PersonModel>> contacts = ValueNotifier<List<PersonModel>>(persons);
}

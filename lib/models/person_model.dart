import 'package:flutter/material.dart';

class PersonModel {
  IconData iconLeft;
  IconData iconRight;
  String name;
  String description;
  String nickName;
  String phone;


  PersonModel({this.description, this.iconLeft, this.iconRight, this.name, this.nickName, this.phone});
}


PersonModel person1 = PersonModel(
    name: 'Juan Moreno',
    description: 'Ejemplo de modelo',
    iconLeft: Icons.person,
    iconRight: Icons.message,
    nickName: 'morjuax'
);
PersonModel person2 = PersonModel(
    name: 'Zubeli Maldonado',
    description: 'Ejemplo de modelo 2',
    iconLeft: Icons.person,
    iconRight: Icons.message,
    nickName: 'zube'
);
PersonModel person3 = PersonModel(
    name: 'Alida Silva',
    description: 'Ejemplo de modelo 3',
    iconLeft: Icons.person,
    iconRight: Icons.message,
    nickName: 'alida'
);
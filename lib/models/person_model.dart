import 'package:flutter/material.dart';

class PersonModel {
  final IconData iconLeft;
  final IconData iconRight;
  final String name;
  final String description;
  final String nickName;

  PersonModel({this.description, this.iconLeft, this.iconRight, this.name, this.nickName});
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
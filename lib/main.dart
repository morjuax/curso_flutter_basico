import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  PersonModel person1 = PersonModel(
    name: 'Juan Moreno',
    description: 'Ejemplo de modelo',
    iconLeft: Icons.person,
    iconRight: Icons.message,
    nickName: 'morjuax'
  );

  // error nickname data === null

  Widget customListTile(PersonModel person) {
    return ListTile(
      leading: Icon(person.iconLeft),
      trailing: Icon(person.iconRight),
      title: Text(person.nickName),
      subtitle: Text(person.description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            actions: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              // IconButton(icon: Icon(Icons.image), onPressed: () {}),
              // IconButton(icon: Icon(Icons.message), onPressed: () {})
            ],
            title: Text('Matanga app'),
          ),
          body: Container(
            child: customListTile(person1),
          ),
        ));
  }
}

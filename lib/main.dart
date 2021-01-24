import 'package:curso_flutter_basico/models/person_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  // error nickname data === null

  Widget customListTile(PersonModel person) {
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
          body: ListView(
            children: [
              for (int i = 0; i < persons.length; i++)
                customListTile(persons[i])
            ],
          ),
        ));
  }
}

// Column, ListView, row
// Stack, grid

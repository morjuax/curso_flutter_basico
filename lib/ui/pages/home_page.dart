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

List<Widget> pages = [
  Container(
    child: Column(
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
    ),
  ),
  Container(color: Colors.blue)
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'Matanga app';

  int picker;

  @override
  void initState() {
    super.initState();
    picker = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(color: Theme.of(context).primaryColor)),
              ListTile(
                title: Text('Inicio'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    picker = 0;
                  });
                },
              ),
              ListTile(
                title: Text('Segunda Pantalla'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    picker = 1;
                  });
                },
              ),
            ],
          ),
        ),
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
        body: pages[picker]);
  }
}

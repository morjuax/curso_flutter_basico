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
          child: ListView.builder(
            itemCount: persons.length,
            itemBuilder: (context, picker){
              return  Dismissible(
                  background: Container(color: Colors.red),
                  onDismissed: (direction) => persons.removeAt(picker),
                  key: Key(picker.toString()),
                  child: CustomListTile(
                    person: persons[picker],
                  ));
            },
          ),
        )
      ],
    ),
  ),
  Container(color: Colors.blue)
];

GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();

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
        key: homeKey,
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(color: Theme.of(context).primaryColor)),
              ListTile(
                title: Text('Inicio'),
                onTap: () {
                  homeKey.currentState
                      .showSnackBar(SnackBar(content: Text('I am snackBar')));
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
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton(
              onPressed: () {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('I am snackBar')));
                print('Button float pressed!');
              },
              child: Icon(Icons.add),
            );
          },
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

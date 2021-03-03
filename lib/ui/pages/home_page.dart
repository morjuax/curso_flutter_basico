import 'package:curso_flutter_basico/ui/pages/contactListPage.dart';
import 'package:flutter/material.dart';


List<Widget> pages = [
  ContactListPage(),
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

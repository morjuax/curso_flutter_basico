import 'package:flutter/material.dart';

GlobalKey<FormState> formContactKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormContactPage extends StatefulWidget {
  @override
  _FormContactPageState createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {
  TextEditingController _nameController;
  TextEditingController _nickNameController;
  TextEditingController _phoneNumberController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: '');
    _nickNameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false, // para quitar el boton de atras
        centerTitle: true,
        title: Text('New Contact')
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formContactKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name'
                  ),
                  onChanged: (value) => print(_nameController.text),
                  controller: _nameController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nickname'
                  ),
                  onChanged: (value) => print(_nickNameController.text),
                  controller: _nickNameController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Phone number'
                  ),
                  onChanged: (value) => print(_phoneNumberController.text),
                  controller: _phoneNumberController,
                )
              ],
            ),
          ),
        ),
      )


    );
  }
}

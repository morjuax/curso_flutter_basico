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
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Ej. Juan Moreno',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor)
                    )
                  ),
                  onChanged: (value) => print(_nameController.text),
                  controller: _nameController,
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Theme.of(context).primaryColor
                    )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Nickname',
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Nickname',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none
                        )
                    ),
                    onChanged: (value) => print(_nickNameController.text),
                    controller: _nickNameController,
                  ),
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Phone number',
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Ej. (+569) 37415576'
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

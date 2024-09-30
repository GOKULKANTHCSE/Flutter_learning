import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = ' ';
  String lastname = ' ';
  String email = ' ';
  String password = ' ';
  final _formkey = GlobalKey<FormState>();

  /*-------- Function -----------*/
  trysubmit() {
    final isvalid = _formkey.currentState!.validate();

    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print("Error");
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Forms"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter First Name",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  key: ValueKey("Firstname"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Enter the firstname';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Last Name",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  key: ValueKey("Lastname"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Enter the lastname';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  key: ValueKey("Email"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Enter the email';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  key: ValueKey("Password"),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return 'Enter the Password above 6 digits';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

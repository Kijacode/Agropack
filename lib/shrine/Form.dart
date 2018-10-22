import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  RegisterForm createState() => RegisterForm();
}

class RegisterForm extends State<Form1> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
          child: new Container(
         padding: const EdgeInsets.only(top:70.0,left: 40.0,right:40.0),
        // margin: EdgeInsets.all(20.0),
        child: new Form(key: _key, child: formUI()),
      )),
    ));
  }

  Widget formUI() {
    String name = "Name is required";
    String email = "Email is required";
    String number = "It required";
    String password = "You must choose your Password";

    return Column(
      


      children: <Widget>[
        new InkWell(
          child: new TextField(
            decoration: new InputDecoration(hintText: "Full Name"),
            keyboardType: TextInputType.text,
            maxLength: 32,
            autocorrect: _validate,
            validator: (String value) {
              if (value.length == 0) {
                return name;
              } else
                return null;
            })
            ),
        new TextField(
            decoration: new InputDecoration(hintText: "Email Address"),
            keyboardType: TextInputType.emailAddress,
            maxLength: 20,
            autocorrect: _validate,
            validator: (String value) {
              if (value.length == 0) {
                return email;
              } else
                return null;
            }),
        new TextField(
            decoration: new InputDecoration(hintText: "Phone Number"),
            keyboardType: TextInputType.phone,
            maxLength: 10,
            autocorrect: _validate,
            validator: (String value) {
              if (value.length == 0) {
                return number;
              }
            }),
        new TextField(
            decoration: new InputDecoration(hintText: "Enter Password"),
            obscureText: true,
            keyboardType: TextInputType.text,
            maxLength: 20,
            autocorrect: _validate,
            validator: (String value) {
              if (value.length == 0) {
                return password;
              } else
                return null;
            }),
        new TextField(
            decoration: new InputDecoration(hintText: "Confirm Password"),
            obscureText: true,
            keyboardType: TextInputType.text,
            maxLength: 20,
            autocorrect: _validate,
            validator: (String value) {
              if (value.length == 0) {
                return password;
              } else
                return null;
            }),
        MaterialButton(
          child: Text('Register'),
          onPressed: _sendDataBase,
        ),
        new SizedBox(height: 20.0),
      ],
    );
  }

  _sendDataBase() {
    if(_key.currentState.validate())
    {

    }
    else
    setState(() {
          _validate = true;
           Navigator.pushNamed(context, '/login');
        });
       
  }
}

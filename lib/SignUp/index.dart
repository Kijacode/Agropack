import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'style.dart';
import 'package:shrine/components/TextFields/inputField.dart';
import 'package:shrine/components/Buttons/roundedButton.dart';
import 'package:shrine/services/validations.dart';
// import'package:firebase_auth/firebase_auth.dart';
// import 'package:shrine/services/authentication.dart';

import 'package:shrine/theme/style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  SignUpScreenState createState() => new SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  //  String _username ;
    // String _email ;
    // String _password ;
  // UserData newUser = new UserData();
  // UserAuth userAuth = new UserAuth();
  bool _autovalidate = false;
  Validations _validations = new Validations();


  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      _autovalidate = true; // Start validating on every change.
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      // form.save();
      // // userAuth.createUser(newUser).then((onValue) {
      // //   showInSnackBar(onValue);
      // // }).catchError((PlatformException onError) {
      // //   showInSnackBar(onError.message);
      // // });
        //  FirebaseAuth.instance.createUserWithEmailAndPassword(
        //    email: _email,
        //    password: _password
        //  ).then((signedInUser){
        //      UserManagement().storeNewUser(signedInUser, context);
        //  }).catchError((e){
        //     print(e);
        //  });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screenSize = MediaQuery.of(context).size;
    //print(context.widget.toString());
    return new Scaffold(
        key: _scaffoldKey,
        body: new SingleChildScrollView(
          child: new Container(
            padding: new EdgeInsets.all(16.0),
            decoration: new BoxDecoration(image: backgroundImage),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                    height: screenSize.height / 2,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "CREATE ACCOUNT",
                          textAlign: TextAlign.center,
                          style: headingStyle,
                        )
                      ],
                    )),
                new SizedBox(
                  height: screenSize.height / 2,
                  child: new Column(
                    children: <Widget>[
                      new Form(
                          key: _formKey,
                          autovalidate: _autovalidate,
                          //onWillPop: _warnUserAboutInvalidData,
                          child: new Column(
                            children: <Widget>[
                              new InputField(
                                hintText: "Username",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                textStyle: textStyle,
                                textFieldColor: textFieldColor,
                                icon: Icons.person_outline,
                                iconColor: Colors.white,
                                bottomMargin: 20.0,
                                validateFunction: _validations.validateName,
                                onSaved: (value) {
                                  // newUser.displayName = name;
                                     setState(() {
                                              // _username = value;                              
                                                                          });
                                },
                              ),
                              new InputField(
                                  hintText: "Email",
                                  obscureText: false,
                                  textInputType: TextInputType.emailAddress,
                                  textStyle: textStyle,
                                  textFieldColor: textFieldColor,
                                  icon: Icons.mail_outline,
                                  iconColor: Colors.white,
                                  bottomMargin: 20.0,
                                  validateFunction: _validations.validateEmail,
                                   onSaved: (value) {
                                  // newUser.displayName = name;
                                     setState(() {
                                              // _email = value;                              
                                                                          });
                                }),
                              new InputField(
                                  hintText: "Password",
                                  obscureText: true,
                                  textInputType: TextInputType.text,
                                  textStyle: textStyle,
                                  textFieldColor: textFieldColor,
                                  icon: Icons.lock_open,
                                  iconColor: Colors.white,
                                  bottomMargin: 40.0,
                                  validateFunction:
                                      _validations.validatePassword,
                                   onSaved: (value) {
                                  // newUser.displayName = name;
                                     setState(() {
                                              // _password = value;                              
                                                                          });
                                }),
                              new RoundedButton(
                                  buttonName: "Continue",
                                  onTap: _handleSubmitted,
                                  width: screenSize.width,
                                  height: 50.0,
                                  bottomMargin: 10.0,
                                  borderWidth: 1.0)
                            ],
                          )),
                      // new TextButton(
                      //   buttonName: " ",
                      //   onPressed:  (){},//_onPressed,
                      //   buttonTextStyle: buttonTextStyle,
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

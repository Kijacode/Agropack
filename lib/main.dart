// found in the LICENSE file.
// final Size screenSize = MediaQuery.of(context).size;

import 'package:flutter/material.dart';
//import 'package:shrine/shrine/Loginp.dart';
import 'package:shrine/shrine/shrinedemo.dart';
import 'package:shrine/shrine/newLogin.dart';
import 'package:shrine/SignUp/index.dart';
import 'package:shrine/shrine/help.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          body: LoginScreen(),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        
        '/second':(context) => new   ShrineDemo (),
        '/register':(context) => new  SignUpScreen(),
        '/help':(context) => new  Help(),
        '/login':(context) => new  LoginScreen(),

      },
    );
  }
}


// This code would ordinarily be part of the MaterialApp's home. It's being
// used by the ShrineDemo and by each route pushed from there because this
// isn't a standalone app with its own main() and MaterialApp.

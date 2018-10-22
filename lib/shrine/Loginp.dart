import 'package:flutter/material.dart';
//    height: MediaQuery.of(context).size.height/2,

class Login extends StatefulWidget {
  Lpage createState() => Lpage();
}

class Lpage extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.topCenter,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9.0)),
                  height: 90.0,
                  width: 200.0,
                  child: new Image(
                      image: new AssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Form(
                        child: new Column(
                      children: <Widget>[
                        TextField(
                          decoration:
                              new InputDecoration(hintText: 'Enter email'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextField(
                          decoration:
                              new InputDecoration(hintText: 'Enter password'),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 30.0)),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MaterialButton(
                              height: 40.0,
                              minWidth: 60.0,
                              color: Colors.teal,
                              child: Text('login'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/second');
                              },
                            ),
                            MaterialButton(
                              height: 40.0,
                              minWidth: 60.0,
                              color: Colors.teal,
                              child: Text('Register'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                            )
                          ],
                        )
                      ],
                    )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

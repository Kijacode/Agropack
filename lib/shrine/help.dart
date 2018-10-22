import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  Myhelp createState() => Myhelp();
}

class Myhelp extends State<Help> {
  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        // backgroudcolor:Colors.greenAccent,
        backgroundColor: Colors.greenAccent,
        appBar: new AppBar(
          title: Text('Agro-Pack'),
          backgroundColor: Colors.greenAccent,
        ),
        body: new Stack(fit: StackFit.expand, children: <Widget>[
          new Image(
            image: new AssetImage('assets/signup-screen-background.png'),
            fit: BoxFit.cover,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Form(
                          child: new Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(30.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              scrollPadding: EdgeInsets.all(20.0),
                              cursorRadius: Radius.circular(30.0),
                              autofocus: true,
                              decoration: new InputDecoration(
                                  hintText: 'Enter your email',
                                  fillColor: Colors.white,
                                  isDense: true),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          new Padding(
                              padding: const EdgeInsets.only(top: 30.0)),
                          SizedBox(
                            height: 30.0,
                          ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              MaterialButton(
                                textColor: Colors.white,
                                padding: EdgeInsets.all(20.0),
                                height: 60.0,
                                minWidth: 90.0,
                                color: Colors.teal,
                                child: Text('ResetPassword'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                    ],
                  )
                ],
              ),
            ],
          )
        ]));
  }
}

// class Help extends StatelfulWidget
// {

//   MyHelp oncreateState() => MyHelp();

// }

// class MyHelp extends State<Help>
// {
//     @override
//     Widget build(BuildContext context) {
// return
//     }
// }

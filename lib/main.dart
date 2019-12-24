import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "MaterialApp",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posizionamento')),
      body: Container(
          margin: EdgeInsets.only(bottom: 16.0),
          padding: const EdgeInsets.all(16),
          child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.only(bottom: 16.0), child: Text('LOGIN')),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Row(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: 16.0),
                    child: Text('USERNAME')),
                    Flexible(child: TextField())
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Row(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: 16.0),
                    child: Text('PASSWORD')),
                    Flexible(child: TextField(obscureText: true,))
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: <Widget>[RaisedButton(
                child: Text('Login'),
                onPressed: () =>{},
              )],
            )
          ])),

    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
  

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage()
    );
  }
}
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posizionamento'))
      
    );

}
}
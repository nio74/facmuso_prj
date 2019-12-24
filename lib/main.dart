import 'package:flutter/material.dart';

void main() => runApp(MyApp());
  

class MyApp extends StatelessWidget{

final String myText = "Ciao World";

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.orange[800],
      padding: const EdgeInsets.all(36),
      child:
       Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Text(this.myText,textDirection: TextDirection.ltr,),
        Text(this.myText,textDirection: TextDirection.ltr,)

      ],) 
  );
  }

}
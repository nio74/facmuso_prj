import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "personal budget",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: PbHomePage(),
        );
  }
}

class PbHomePage extends StatefulWidget {
  PbHomePage({Key key}) : super(key: key);

  final String title = "Personal Budget";

  @override
  _PbHomePageState createState() => _PbHomePageState();
      
    }
  
  

class _PbHomePageState  extends State<PbHomePage>{
  int _selectedIndex=0;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.settings),
            onPressed: () => {})
            ,
            IconButton(
            icon:Icon(Icons.refresh),
            onPressed: () => {},
          ),
        ],
        ),/*
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.yellowAccent,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                child: Text("Elenco"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Dettaglio"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Totali"),
                onPressed: () => {},
              )
            ],
          ),
        ),
      ) ,*/
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor:  Colors.black,
        unselectedItemColor: Colors.greenAccent,
        currentIndex: _selectedIndex,
        onTap: (_index){
          setState(() {
            _selectedIndex = _index;
          });
          
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Elenco'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Dettaaglio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Oggi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('Altro'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('Altro2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Aggingi spesa',
        onPressed: ()=>{},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Container(
          color:Colors.yellow,
          padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Text('Demo Menu'),
        ),
      ),
    );
 }
    
}
 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('        Say No to bullying!     '),
        backgroundColor: Color(0xFFC4C4C4),
      ),
      body: ListView(children:<Widget> [
        Padding(padding: const EdgeInsets.all(16.0),
        child:Container(
          child:new FittedBox(child: Material(
            color:Color(0XFF727272),
            elevation: 14.0,
            borderRadius:BorderRadius.circular(24.0),
            shadowColor: Color(0x802196f3),
            child: Row(children: <Widget>[
              Container(child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),)),
              Container(
                          width: 250,
                          height: 200,


                )
            ],)
          ) ,)
        ) ,)
      ],
      ),

    floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Action");
        },
        child:  Icon(Icons.chat_bubble_rounded),
      backgroundColor: Color(0xff08a0e9),
      foregroundColor: Colors.white,

    ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Menu',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Chatbot'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Info'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text('About us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

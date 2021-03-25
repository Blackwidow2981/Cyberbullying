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
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: <Widget>[
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child:Container(
              child:Row(children:<Widget> [
                Container(
                  width: 414.0,
                  height:300.0,
                  color: Colors.blue,
                  

                ),
                Container(child:Text("Sample"))
              ],)
            )
          )
        ]
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

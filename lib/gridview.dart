import 'dart:js_util';

import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(debugShowCheckedModeBanner: false,home: myapp(),));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Grid View'),
            centerTitle: true,
            actions: [
              PopupMenuButton(
                  itemBuilder: (context)=>[
                    PopupMenuItem(child: Text('Menu')),
                    PopupMenuItem(child: Text('Settings')),
                    PopupMenuItem(child: Text('list')),
                    PopupMenuItem(child: Text('Group')),
                    PopupMenuItem(child: Text('Add')),
                    PopupMenuItem(child: Text('Remove')),
                  ]
              ),
            ],
            bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.groups),),
                  Tab(icon: Icon(Icons.contacts),),
                  Tab(text: 'Chats',),
                ]
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  duration: Duration(seconds: 3),
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Geethu'),
                    accountEmail: Text('Geethu12345@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('lib/asset/1.jpg'),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Search'),
                ),
              ],
            ),
          ),
          body: GridView.count(
            crossAxisCount: 5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.teal,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.pink,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white24,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.indigoAccent,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.orangeAccent,
                child: Center(child: Text('Hello World')),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.purple,
                child: Center(child: Text('Hello World')),
              ),
            ],
          ),
        ),
    ) ;
  }
}

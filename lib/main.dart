import 'package:flutter/material.dart';
import 'package:untitled93/contacts.dart';
import 'package:untitled93/home.dart';
import 'package:untitled93/search.dart';
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
int _currentindex=0;
  List pages=[home(),contacts(),search()];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
                child:UserAccountsDrawerHeader(
                  accountName: Text('Manu'),
                  accountEmail: Text('manu3434@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("lib/asset/1.jpg"),
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
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
            ),
          ],
        ),
      ),
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,onTap: (index){
          setState(() {
            _currentindex=index;
          });
      },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: contacts(),));
}
class contacts extends StatefulWidget {
  const contacts({super.key});

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Contacts'),
      ),
    );
  }
}

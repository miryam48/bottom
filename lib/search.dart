import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(debugShowCheckedModeBanner: false,home: search(),));
}
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}

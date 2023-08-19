import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        darkTheme: ThemeData(primaryColor: Colors.black),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: Homeactivits());
  }
}

class Homeactivits extends StatelessWidget {
  const Homeactivits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 10,
        toolbarHeight: 60,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20), child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),label: Text('First name')),),),
          Padding(padding: EdgeInsets.all(20), child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Last name')),),),
          Padding(padding: EdgeInsets.all(20), child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Email')),),),
          Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed:(){}, child: Text('Submit')) , ),
        ],
      ),
    );
  }
}

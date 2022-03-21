import 'package:flutter/material.dart';

void main() {
  runApp(ListApus());
}

class ListApus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apus List Tile"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(index.toString()),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text("Title"),
                subtitle: Text("Subtitle"),
              ),
            );
          }),
    );
  }
}

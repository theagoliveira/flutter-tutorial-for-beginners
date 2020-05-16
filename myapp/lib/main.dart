import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          "Hello, ninjas!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.grey[600],
            fontFamily: "IndieFlower",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        backgroundColor: Colors.red[600],
        onPressed: null,
      ),
    ),
  ));
}

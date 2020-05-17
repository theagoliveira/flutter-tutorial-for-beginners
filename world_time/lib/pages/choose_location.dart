import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // Simulate a network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "Yoshi";
    });

    // Simulate a network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "Vegan, musician and egg collector.";
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hey, there");
  }

  @override
  Widget build(BuildContext context) {
    print("build function ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}

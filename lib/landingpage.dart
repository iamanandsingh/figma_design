import 'package:flutter/material.dart';

import 'secondscreen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black12,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text(
                "Create",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma design',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: Colors.black,
      ),
      home: LandingPage(),
    );
  }
}

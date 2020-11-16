import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla/screens/lock_screen/lock_screen_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tesla",
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LockScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maavricks/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
              backgroundColor: WidgetStatePropertyAll(Colors.orange),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              textStyle: WidgetStatePropertyAll(
                  TextStyle(fontWeight: FontWeight.w600))),
        ),
        textTheme: GoogleFonts.ptSansTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: Colors.green[50],
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Homepage(),
      ),
    );
  }
}

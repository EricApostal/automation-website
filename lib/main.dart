import 'package:Automation/pages/home.dart';
import 'package:Automation/pages/map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Automation/components/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Automation',
        initialRoute: '/',
        onGenerateRoute: (settings) {
          // print("route generated");
        },
        theme: ThemeData(
          fontFamily:
              GoogleFonts.inriaSans(fontWeight: FontWeight.bold, fontSize: 60)
                  .fontFamily,
          colorScheme: const ColorScheme.dark(
              background: Color(0xFF1B1B1C),
              primary: Color(0xFF252527),
              secondary: Color(0xFFA8A8A8)),
          useMaterial3: true,
        ),
        home: DefaultTextStyle(
            style: TextStyle(
              fontFamily: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.bold, fontSize: 60)
                  .fontFamily,
            ),
            child: const Home()));
  }
}

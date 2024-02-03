import 'package:automation_website/pages/home.dart';
import 'package:automation_website/pages/map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:automation_website/components/nav.dart';

void main() {
  runApp(const MyApp());
}

// flutter run -d chrome --web-renderer html

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(children: [
        const NavBar(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height - 50,
          child: MaterialApp(
            title: 'Automation',
            initialRoute: '/',
            routes: {
              '/': (context) => const Home(),
              '/map': (context) => const WorldMap(),
            },
            theme: ThemeData(
              fontFamily: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.bold, fontSize: 60)
                  .fontFamily,
              colorScheme: const ColorScheme.dark(
                  background: Color(0xFF1B1B1C),
                  primary: Color(0xFF252527),
                  secondary: Color(0xFFA8A8A8)),
              useMaterial3: true,
            ),
          ),
        )
      ]),
    ));
  }
}

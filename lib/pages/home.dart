import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:automation_website/components//nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(children: [
          Image.asset('assets/images/background.png'),
          Center(
            child: Column(
              children: [
                const NavBar(),
                Center(child: Image.asset('assets/images/title.png'))
              ],
            ),
          ),
        ]),
      ],
    );
  }
}

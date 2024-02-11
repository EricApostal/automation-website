import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:automation_website/components//nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Image.asset('assets/images/background.png'),
          Center(
            child: Column(
              children: [
                const NavBar(),
                Center(child: Image.asset('assets/images/title.png'))
              ],
            ),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.33,
              child: Container(
                width: 180,
                height: 60,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xFF00A1FB)),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent)),
                  child: const Center(
                      child: Text(
                    "Let's Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
                ),
              ))
        ]),
        Container(
          decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
          child: Column(children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hackable",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 50,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                  "Play Automation your own way using CC: Tweaked. Automate the game so much that you don’t even have to play it anymore! Don’t forget to bring some Lua experience thought!",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontWeight: FontWeight.w100),
                                  textAlign: TextAlign.left),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width: 400,
                          // decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                              child:
                                  Image.asset('assets/images/tweaked_terminal.png'),
                          ),
                        )
                      ]),
                ),
              ),
            )
          ]),
        ),
        Container(
            height: 80,
            decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
            child: Center(
                child: Text(
              "Copyright of absolutely nobody. I don’t know how to do that.",
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),
              textAlign: TextAlign.center,
            )))
      ],
    );
  }
}

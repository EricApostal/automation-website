import 'dart:html';

import 'package:Automation/components/info_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Automation/components//nav.dart';
import 'package:typewritertext/typewritertext.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily:
            GoogleFonts.inriaSans(fontWeight: FontWeight.bold, fontSize: 60)
                .fontFamily,
      ),
      child: ListView(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 20,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: (MediaQuery.of(context).size.shortestSide < 600)
                    ? Image.asset(
                        'assets/images/background.png',
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/background.png',
                      )),
            Center(
              child: Column(
                children: [
                  const NavBar(),
                  Center(child: Image.asset('assets/images/title.png')),
                ],
              ),
            ),
            // (MediaQuery.of(context).size.shortestSide < 600)
            //     ? Positioned(
            //         bottom: MediaQuery.sizeOf(context).height * 0.2,
            //         child: TypeWriterText(
            //           text: Text(
            //             'The future of Modded Minecraft ',
            //             style: TextStyle(
            //               fontSize: 30,
            //               color: Colors.white,
            //               fontFamily: GoogleFonts.inriaSans(
            //                       fontWeight: FontWeight.bold, fontSize: 60)
            //                   .fontFamily,
            //             ),
            //             softWrap: true,
            //           ),
            //           duration: const Duration(milliseconds: 50),
            //         ))
            //     : const SizedBox()
          ]),
          Container(
            decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: InfoCard(
                    title: "Hackable",
                    description:
                        "Play Automation your own way using CC: Tweaked. Automate the game so much that you don’t even have to play it anymore! Don’t forget to bring some Lua experience!",
                    imagePath: 'assets/images/tweaked_terminal.png',
                    orientation: 1,
                  ),
                )),
              ),
              const InfoCard(
                title: "Fast as F***",
                description:
                    "Are you running on a potato, or any MacBook skew? Don’t fear-- Automation was crafted with performance in mind. We have extensively tested many solutions to increase performance, and avoid any mods that may make Automation inaccessible.",
                imagePath: 'assets/images/sodium.webp',
                orientation: 2,
              ),
              const InfoCard(
                title: "Play with friends",
                description:
                    "Do you not have friends? Don’t worry, just load up play.automationmc.net! This is a hybrid server server, so we don’t have to sacrifice features found on common survival servers.",
                imagePath: 'assets/images/friends.webp',
                orientation: 1,
              ),
            ]),
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(color: Color(0xFF252527)),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 190,
                    height: 75,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xFF00A1FB)),
                    child: TextButton(
                      onPressed: () {
                        window.open('https://modrinth.com/modpack/automation',
                            'new tab');
                      },
                      style: ButtonStyle(
                          splashFactory: NoSplash.splashFactory,
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) => Colors.transparent)),
                      child: const Text(
                        "Start Your Empire",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 80,
              decoration: const BoxDecoration(color: Color(0xFF1B1B1C)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Copyright© of absolutely nobody. I don’t know how to do that.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary),
                  textAlign: TextAlign.center,
                ),
              )))
        ],
      ),
    );
  }
}

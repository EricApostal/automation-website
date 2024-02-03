import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  NavButton({super.key, required this.text, required this.route});
  String text;
  String route;

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, widget.route);
        },
        style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent)),
        child: Text(widget.text,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w100)),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        NavButton(text: "Map", route: "/map"),
        NavButton(text: "Home", route: "/"),
        NavButton(text: "Shop", route: "/shop"),
      ]),
    );
  }
}

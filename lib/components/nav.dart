import 'package:automation_website/routes.dart';
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
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          // decoration: BoxDecoration(color: Color.fromARGB(255, 61, 61, 255)),
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, widget.route);
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      settings: RouteSettings(name: widget.route),
                      pageBuilder: (_, __, ___) {
                        return routes[widget.route]!(context);
                      },
                    ),
                    (route) => false,
                  );
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
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(color: (ModalRoute.of(context)!.settings.name == widget.route) ? const Color.fromARGB(255, 94, 250, 159): const Color.fromARGB(0, 0, 0, 255)),)
            ],
          ),
        ),
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
        NavButton(text: "Home", route: "/"),
        NavButton(text: "World Map", route: "/map"),
        NavButton(text: "Track Map", route: "/track-map"),
      ]),
    );
  }
}

import 'package:Automation/components/nav.dart';
import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

class TrackMap extends StatelessWidget {
  const TrackMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyBrowser());
  }
}

class MyBrowser extends StatefulWidget {
  const MyBrowser({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyBrowserState createState() => _MyBrowserState();
}

class _MyBrowserState extends State<MyBrowser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const NavBar(),
      SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height - 53,
          child: const Webview(url: "http://play.automationmc.net:25575/"))
    ]));
  }
}

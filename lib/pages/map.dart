import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

class WorldMap extends StatelessWidget {
  const WorldMap({super.key});

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
    return const Scaffold(
        body:
            Center(child: Webview(url: "http://play.automationmc.net:25567/")));
  }
}

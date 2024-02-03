import 'package:flutter/material.dart';
import 'package:automation_website/pages/home.dart';
import 'package:automation_website/pages/map.dart';

final Map<String, WidgetBuilder> routes = {
    '/': (context) => const Home(),
    '/map': (context) => const WorldMap(),
  };
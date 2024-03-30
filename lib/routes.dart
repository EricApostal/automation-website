import 'package:Automation/pages/track_map.dart';
import 'package:flutter/material.dart';
import 'package:Automation/pages/home.dart';
import 'package:Automation/pages/map.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const Home(),
  '/map': (context) => const WorldMap(),
  '/track-map': (context) => const TrackMap()
};

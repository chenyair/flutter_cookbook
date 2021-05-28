import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animate_a_page_route_transition/main_animate_a_page_route_transition.dart';
import 'package:flutter_cookbook/effects/create_a_scrolling_parallax_effect/main_create_a_scrolling_parallax_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookbook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainCreateAScrollingParallaxEffect(),
    );
  }
}

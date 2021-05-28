import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animate_a_page_route_transition/main_animate_a_page_route_transition.dart';
import 'package:flutter_cookbook/animation/animate_a_widget_using_a_physics_simulation/main_animate_a_widget_using_a_physics_simulation.dart';

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
      home: MainAnimateAWidgetUsingAPhysicsSimualtion(),
    );
  }
}

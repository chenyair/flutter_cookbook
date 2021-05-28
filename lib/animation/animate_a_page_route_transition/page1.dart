import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: Text('Go!'),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = Offset(0.0, 1.0);
        final end = Offset.zero;
        final curve = Curves.ease;
        final curveTween = CurveTween(curve: curve);
        final tween = Tween<Offset>(begin: begin, end: end).chain(curveTween);

        final offsetAnimaton = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimaton,
          child: child,
        );
      },
    );
  }
}

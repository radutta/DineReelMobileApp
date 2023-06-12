import 'package:flutter/material.dart';

class Routes {
  Route createRoute(final pageraute) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => pageraute,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.50, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route createRouteUp(final pageraute) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => pageraute,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 0.50);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

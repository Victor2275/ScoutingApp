import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BotStatsPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/MatchScoutingPage.dart';
import 'package:flutter_application_1/pages/PicklistPage.dart';
import 'package:flutter_application_1/pages/PitScoutingPage.dart';


class Routing {


static Route createRoute(Widget w) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => w,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

static Route routeToHome() {
  return createRoute(HomePage());
}

static Route routeToMatchScouting() {
  return createRoute(MatchScoutingPage());
}

static Route routeToPitScouting() {
  return createRoute(PitScoutingPage());
}

static Route routeToBotStats() {
  return createRoute(BotStatsPage());
}

static Route routeToPicklist() {
  return createRoute(PicklistPage());
}


}
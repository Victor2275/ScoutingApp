import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routing.dart';
import 'package:flutter_application_1/myAppState.dart';
import 'package:provider/provider.dart';

class MatchScoutingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();


      return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Match Scouting'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(Routing.routeToHome());
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
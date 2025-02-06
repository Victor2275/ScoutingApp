import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routing.dart';
import 'package:flutter_application_1/myAppState.dart';
import 'package:provider/provider.dart';

class PitScoutingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    IconData plusIcon = Icons.plus_one;

    return Scaffold(
      body: DecoratedBox(
          // BoxDecoration takes the image
          decoration: BoxDecoration(
            // Image set to background of the body
            image: DecorationImage(
                image: AssetImage("images/logo.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pit Scouting:'),
                ElevatedButton.icon(
                  onPressed: () {
                    appState.incCoral();
                  },
                  icon: Icon(plusIcon),
                  label: Text(appState.getCoral().toString()),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(Routing.routeToHome());
                  },
                  child: Text('Home'),
                ),
              ],
            ),
          )),
    );
  }
}

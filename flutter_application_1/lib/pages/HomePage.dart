import 'package:flutter/material.dart';
import 'package:flutter_application_1/myAppState.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/Routing.dart';


class HomePage extends StatelessWidget {
  const HomePage ({super.key});
  
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    
    
  

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(Routing.routeToMatchScouting());
                },
                child: Text('Match Scouting'),
              ),
          SizedBox(height: 20),
          ElevatedButton(

            
            onPressed: () {
              Navigator.of(context).push(Routing.routeToPitScouting());
            },
            child: Text('Pit Scouting'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(Routing.routeToBotStats());
            },
            child: Text('Bot Stats')
            ),
            SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(Routing.routeToPicklist());
            },
            child: Text('Picklist')
            )
            ],
          ),
    );
  }
}
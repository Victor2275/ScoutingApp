import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routing.dart';
import 'package:flutter_application_1/cards/BigCard.dart';

class DispBotStatsPage extends StatelessWidget {
  
  final int teamNumber;

  const DispBotStatsPage(this.teamNumber);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              BigCard(
                num: teamNumber
                  
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(Routing.routeToBotStats());
                },
                child: Text('Back'),
              ),
            ]   
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Routing.dart';
import 'package:flutter_application_1/myAppState.dart';
import 'package:provider/provider.dart';

class BotStatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    var myController = TextEditingController();


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
            SizedBox(
              width: 160,
              child:  TextField(
              decoration: new InputDecoration(fillColor: Color.fromARGB(255, 255, 255, 255),labelText: "Enter team number"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: myController, // Only numbers can be entered
            )
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(Routing.routeToHome());
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    ));
  }
}

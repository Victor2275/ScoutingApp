import 'package:flutter/material.dart';
import 'package:flutter_application_1/myAppState.dart';
import 'package:flutter_application_1/pages/BotStatsPage.dart';
import 'package:flutter_application_1/pages/MatchScoutingPage.dart';
import 'package:flutter_application_1/pages/PicklistPage.dart';
import 'package:flutter_application_1/pages/PitScoutingPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:provider/provider.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          //useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            
            displayLarge: TextStyle(color: Colors.white), 
            displayMedium: TextStyle(color: Colors.white),
            displaySmall: TextStyle(color: Colors.white),
           headlineLarge: TextStyle(color: Colors.white),
           headlineMedium: TextStyle(color: Colors.white),
           headlineSmall: TextStyle(color: Colors.white),
           titleLarge: TextStyle(color: Colors.white),
           titleMedium: TextStyle(color: Colors.white),
           titleSmall: TextStyle(color: Colors.white),
           bodyLarge: TextStyle(color: Colors.white),
           bodyMedium: TextStyle(color: Colors.white),
           bodySmall: TextStyle(color: Colors.white),
           labelLarge: TextStyle(color: Colors.white),
           labelMedium: TextStyle(color: Colors.white),
           labelSmall: TextStyle(color: Colors.white),
          ),
        ),
        
        home: HomePage(),
        routes: {
          '/home':(context) =>  HomePage(),
          '/matchscouting':(context) => MatchScoutingPage(),
          '/pitscouting':(context) =>  PitScoutingPage(),
          '/botstats':(context) =>  BotStatsPage(),
          '/picklist':(context) => PicklistPage()
        },
      ),
    );
  }
}
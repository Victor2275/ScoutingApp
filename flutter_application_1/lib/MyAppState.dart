import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';



class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  

  var curr = 3;
  var coral = 0;

  Widget currPage = HomePage();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }



  List<WordPair> getFavorite() {
    return favorites;
  }

  void incCoral() {
    coral++;
    notifyListeners();
  } 



  int getCoral() {
    return coral;
  }

  String hi() {
    return "hello";
  }


}
import 'package:flutter/material.dart';

/// This is the model that holds the searched word and notifies listeners on change.
class SearchedWord extends ChangeNotifier {
  var word = '';

  /// Returns the current searched word.
  String get wordValue => word;

  /// Updates the searched word and notifies listeners.
  void changeWord(String newWord) {
    word = newWord;
    notifyListeners();
  }
}

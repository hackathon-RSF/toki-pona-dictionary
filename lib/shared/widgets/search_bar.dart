import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A simple search bar widget that updates the searched word in the provided model. It needs a ChangeNotifierProvider&lt;SearchedWord&gt; ancestor in the widget tree.
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var model = context.watch<SearchedWord>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search...',
        ),
        onChanged: (text) {
          model.changeWord(text);
        },
      ),
    );
  }
}

/// This is the model that holds the searched word and notifies listeners on change.
class SearchedWord extends ChangeNotifier {
  var word = '';

  String get wordValue => word;

  void changeWord(String newWord) {
    word = newWord;
    notifyListeners();
  }
}

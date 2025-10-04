import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/model/searched_word.dart';

/// A simple search bar widget that updates the searched word in the provided model. It needs a ChangeNotifierProvider&lt;SearchedWord&gt; ancestor in the widget tree.
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var model = context.watch<SearchedWord>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: 'Search...',
        ),
        onChanged: (text) {
          model.changeWord(text);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/model/searched_word.dart';

class WordsListWidget extends StatefulWidget {
  @override
  State<WordsListWidget> createState() => _WordsListWidgetState();
}

class _WordsListWidgetState extends State<WordsListWidget> {
  @override
  Widget build(BuildContext context) {
    var filter = context.watch<SearchedWord>().wordValue.toLowerCase();
    final List<String> words = ["cIAO", "tOKy", "Pony"];
    final filteredWords = words
        .where((word) => word.toLowerCase().contains(filter))
        .toList();

    return Expanded(
      child: ListView.builder(
        itemCount: filteredWords.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              title: Text(filteredWords[index]),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tileColor: Colors.transparent, // colore di default
              hoverColor: Colors.white.withValues(alpha: 0.2),
              selectedTileColor: Colors.white.withValues(alpha: 0.3),
              onTap: () {
                debugPrint('Hai premuto: ${words[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}

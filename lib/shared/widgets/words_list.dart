import 'package:flutter/material.dart';
import 'package:toki_pona_dictionary/data/dict_repo.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/model/searched_word.dart';
import 'package:toki_pona_dictionary/shared/widgets/word_card.dart';

class WordsListWidget extends StatefulWidget {
  @override
  State<WordsListWidget> createState() => _WordsListWidgetState();
}

class _WordsListWidgetState extends State<WordsListWidget> {
  @override
  Widget build(BuildContext context) {
    final List<Entry> words = loadWords();
    var filter = context.watch<SearchedWord>().wordValue.toLowerCase();
    final filteredWords = words
        .where((entry) => entry.word.toLowerCase().contains(filter))
        .toList();

    return Expanded(
      child: ListView.builder(
        itemCount: filteredWords.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              title: Text(
                filteredWords[index].word,
                textAlign: TextAlign.center,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tileColor: Colors.transparent, // colore di default
              hoverColor: Colors.white.withValues(alpha: 0.2),
              selectedTileColor: Colors.white.withValues(alpha: 0.3),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: WordCard(entry: filteredWords[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

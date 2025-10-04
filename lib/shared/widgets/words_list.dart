import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toki_pona_dictionary/data/dict_repo.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/model/searched_word.dart';
import 'package:toki_pona_dictionary/shared/widgets/word_card.dart';

class WordsListWidget extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: ListTile(
              title: Text(
                filteredWords[index].word,
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.transparent,
                    contentPadding: EdgeInsets.zero,
                    content: SizedBox(
                      child: SingleChildScrollView(
                        child: WordCard(entry: filteredWords[index]),
                      ),
                    ),
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

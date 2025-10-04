import 'package:flutter/material.dart';

class WordsListWidget extends StatefulWidget {
  @override
  State<WordsListWidget> createState() => _WordsListWidgetState();
}

class _WordsListWidgetState extends State<WordsListWidget> {
  // void _incrementCounter() {
  //   setState(() {

  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> words = [
      "cIAO",
      "tOKy",
      "Pony",
    ]; //Repository.fetchTodos();

    return Expanded(
      // 👈 per farlo adattare bene dentro la Column
      child: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              title: Text(words[index]),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tileColor: Colors.transparent, // colore di default
              hoverColor: Colors.white.withValues(
                alpha: 0.2,
              ), // effetto hover (web/desktop)
              selectedTileColor: Colors.white.withValues(
                alpha: 0.3,
              ), // effetto click/selected
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

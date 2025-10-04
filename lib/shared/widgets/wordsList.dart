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
    final List<String> words = ["cIAO", "tOKy", "Pony"];//Repository.fetchTodos();
    
    return Expanded( // 👈 per farlo adattare bene dentro la Column
      child: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(words[index]),
          );
        },
      ),
    );
  }
}
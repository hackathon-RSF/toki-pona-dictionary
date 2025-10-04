import 'package:flutter/material.dart';
import 'package:toki_pona_dictionary/data/dict_repo.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.entry});

  final Entry entry;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(entry.word, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8.0),
            Text(entry.origin?.word ?? 'No origin'),
          ],
        ),
      ),
    );
  }
}

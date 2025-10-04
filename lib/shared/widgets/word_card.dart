import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toki_pona_dictionary/data/dict_repo.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.entry});

  final Entry entry;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              entry.word.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexMono(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meanings",
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  entry.meanings
                      .asMap()
                      .entries
                      .map((e) => '${e.key + 1}. ${e.value.toString()}')
                      .join('\n\n'),
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Origin",
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  (entry.origin != null ? entry.origin.toString() : 'No origin'),
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

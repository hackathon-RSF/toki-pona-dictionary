import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/model/searched_word.dart';
import 'package:toki_pona_dictionary/shared/widgets/search_bar.dart';
import 'package:toki_pona_dictionary/shared/widgets/words_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFC0F3FF), Color(0xFFC3FFB0)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ChangeNotifierProvider(
            create: (_) => SearchedWord(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100),
                Text(
                  'Toki Pona Dictionary',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                SearchBarWidget(),
                WordsListWidget(),
                Text(
                  'One-day project by',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'Hackaton-RSF',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexMono(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

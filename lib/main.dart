import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toki_pona_dictionary/shared/widgets/search_bar.dart';
import 'shared/widgets/wordsList.dart'; //

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toki Pona Dictionary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 100),
              Text(
                'Toki Pona Dictionary',
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexMono(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ChangeNotifierProvider(
                create: (_) => SearchedWord(),
                child: const SearchBarWidget(),
              ),
              WordsListWidget(),
              const Text('One-day project by Hackaton-RSF'),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:english_words/english_words.dart'; //used at line 31
import 'package:flutter/material.dart'; //used for material design
import 'package:provider/provider.dart'; //used for reactive state management

void main() {
  runApp(TokiPonaDictionary());
}

class TokiPonaDictionary extends StatelessWidget {
  //has no state: the state is in GlobalState
  const TokiPonaDictionary({
    super.key,
  }); //constructor. Fun fact: const means that this can be const-constructed

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //enables reactive state management
      create: (context) => GlobalState(),
      child: MaterialApp(
        title: 'Toki Pona Dictionary',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: HomePage(),
      ),
    );
  }
}

class GlobalState extends ChangeNotifier {
  var randomWord = WordPair.random();
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context
        .watch<
          GlobalState
        >(); //somehow manages to retreive the GlobalState instance

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.randomWord.asLowerCase),
        ],
      ),
    );
  }
}

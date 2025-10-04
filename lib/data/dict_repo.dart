import 'dart:async';
import 'dart:io';
import 'dart:convert' show jsonDecode;

List<Entry> loadWords() {
  return [
    Entry(word: "ala", translation: ["not", "nothing", "no"], usage: [Usage.adjective], origin: Origin(word: "ara", language: "Georgian", meaning: "no")),
    Entry(word: "ala", translation: ["not", "nothing", "no"], usage: [Usage.adjective], origin: Origin(word: "ara", language: "Georgian")),
    Entry(word: "alasa", usage: [Usage.noun], translation: ["gather"]),
  ];
}

class Entry {
  final String word;
  final List<String> translation;
  final List<Usage> usage;
  final Origin? origin;
  Entry({
   required this.word, 
   required this.translation,
   required this.usage,
   this.origin,
  });

  @override
  String toString() => 'Entry(word: $word, translation: $translation, usage: $usage, origin: $origin)';
}

class Origin {
  final String word;
  final String language;
  final String? meaning;
  Origin({
    required this.word,
    required this.language,
    this.meaning,
  });

  @override
  String toString() => 'Origin(word: $word, language: $language, meaning: $meaning)';
}

enum Usage {interject, adjective, noun, verb}

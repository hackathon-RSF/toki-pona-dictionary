List<Entry> loadWords() {
  return [
    Entry(
      word: "a",
      meanings: [
        Meaning(
          translations: ["emphasis", "emotion", "confirmation"],
          usage: Usage.particle
        ),
      ],
    ),
    Entry(
      word: "akesi",
      meanings: [
        Meaning(
          translations: ["reptile", "amphibian", "scaly creature", "crawling creature"],
          usage: Usage.noun
        ),
      ],
      origin: Origin(
        word: "hagedis",
        language: "Dutch",
        meaning: "lizard"
      ),
    ),
    Entry(
      word: "ala",
      meanings: [
        Meaning(
          translations: ["not", "nothing", "no"],
          usage: Usage.particle
        ),
        Meaning(
          translations: ["'negates a word or phrase'"],
          usage: Usage.particle
        ),
        Meaning(
          translations: ["zero"],
          usage: Usage.number
        ),
      ],
      origin: Origin(
        word: "ara",
        language: "Georgian",
        meaning: "no"
      ),
    ),
    Entry(
      word: "alasa",
      meanings: [
        Meaning(
          translations: ["hunt", "forage", "search", "attempt"],
          usage: Usage.noun
        ),
        Meaning(
          translations: ["try to"],
          usage: Usage.preverb
        ),
      ],
      origin: Origin(
        word: "à la chasse",
        language: "Acadian French",
        meaning: "hunting, (literally) on the hunt"
      ),
    ),
  ];
}

class Entry {
  final String word;
  final List<Meaning> meanings;
  final Origin? origin;
  Entry({
   required this.word, 
   required this.meanings,
   this.origin,
  });

  @override
  String toString() => 'Entry(word: $word, meanings: $meanings, origin: $origin)';
}

class Meaning {
  final List<String> translations;
  final Usage usage;
  Meaning({
    required this.translations,
    required this.usage
  });

  @override
  String toString() => 'Translations: ${translations.join(", ")}\nUsage: ${usage.name}';
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

enum Usage {
  interject, adjective, noun, verb, particle, number, preverb
  }

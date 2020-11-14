import 'package:sg_flutter_mobile_app/model/phrase_component.dart';
import 'package:sg_flutter_mobile_app/model/punctuation_in_phrase.dart';
import 'package:sg_flutter_mobile_app/model/word_in_sentence.dart';
import 'package:sg_flutter_mobile_app/model/sentence_in_phrase.dart';

class Phrase {
  static List<Phrase> getPhrases() => [
    Phrase(
    SentenceInPhrase(1, "main sentence", "A1", [
          WordInSentence("Die", "definite article", "A1", "the", 1, "none"),
          WordInSentence(
              "gute", "adjective", "A1", "good", 2, "adjectival attribute"),
          WordInSentence("Nachricht", "noun", "A1", "news", 3, "subject"),
          WordInSentence("ist", "verb", "A1", "is", 4, "predicate")
        ]),
        PunctuationInPhrase(
            ",", 2, "connection between main sentence and secondary sentence"),
        SentenceInPhrase(2, "secondary sentence", "A2", [
          WordInSentence("dass", "conjunction", "A1", "that", 1, "none"),
          WordInSentence(
              "Investieren", "noun", "B1", "investing", 2, "subject"),
          WordInSentence("erfolgreicher", "adjective", "A1", "successful", 3,
              "attributive"),
          WordInSentence("Vermögensaufbau", "noun", "B1", "wealth generation",
              4, "subject"),
          WordInSentence("nicht", "negation", "A1", "does not", 5, "none"),
          WordInSentence("kompliziert", "adjective", "A1", "complicated", 6,
              "attributive"),
          WordInSentence("sein", "verb", "A1", "to be", 7, "predicate"),
          WordInSentence(
              "müssen", "modal verb", "A1", "have to", 8, "predicate")
        ]),
        PunctuationInPhrase(".", 4, "end of phrase")
      ],
  "B1"
  )
  ];

  List<PhraseComponent> phraseComponents;
  String phraseComplexityLevel;

  Phrase(this.phraseComponents, this.phraseComplexityLevel);
}

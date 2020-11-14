import 'package:sg_flutter_mobile_app/model/word.dart';

class WordInSentence extends Word {
  int wordPosition;
  String wordSyntacticFunction;

  WordInSentence(
      String wordText,
      String wordMorphologicalValue,
      String wordComplexityLevel,
      String wordDictionaryDefinition,
      this.wordPosition,
      this.wordSyntacticFunction)
      : super(wordText, wordMorphologicalValue, wordComplexityLevel,
            wordDictionaryDefinition);
}

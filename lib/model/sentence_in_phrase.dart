import 'package:sg_flutter_mobile_app/model/phrase_component.dart';
import 'package:sg_flutter_mobile_app/model/sentence.dart';
import 'package:sg_flutter_mobile_app/model/word.dart';

class SentenceInPhrase extends Sentence implements PhraseComponent {
  int sentencePosition;
  String sentenceFunction;

  SentenceInPhrase(
      List<Word> sentenceComponents,
      String sentenceComplexityLevel,
      this.sentencePosition,
      this.sentenceFunction)
      : super(sentenceComponents, sentenceComplexityLevel);
}

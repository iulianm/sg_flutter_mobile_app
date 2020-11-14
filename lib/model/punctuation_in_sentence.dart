import 'package:sg_flutter_mobile_app/model/punctuation.dart';

class PunctuationInSentence extends Punctuation {
  int sentencePosition;
  String sentenceFunction;

  PunctuationInSentence(this.sentencePosition, this.sentenceFunction,
      String punctuationText)
      : super(punctuationText);
}
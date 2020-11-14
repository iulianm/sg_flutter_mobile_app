import 'package:sg_flutter_mobile_app/model/word.dart';

class Sentence {
  List<Word> sentenceComponents;
  String sentenceComplexityLevel;

  Sentence(this.sentenceComponents, this.sentenceComplexityLevel);
}

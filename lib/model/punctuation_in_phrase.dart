import 'package:sg_flutter_mobile_app/model/phrase_component.dart';
import 'package:sg_flutter_mobile_app/model/punctuation.dart';

class PunctuationInPhrase extends Punctuation implements PhraseComponent {
  int phrasePosition;
  String phraseFunction;

  PunctuationInPhrase(
      String punctuationText, this.phrasePosition, this.phraseFunction)
      : super(punctuationText);

  @override
  String getText() {
    return punctuationText;
  }
}

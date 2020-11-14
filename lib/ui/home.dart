import 'package:flutter/material.dart';
import 'package:sg_flutter_mobile_app/model/phrase.dart';
import 'package:sg_flutter_mobile_app/ui/phrase_ui.dart';

class PhraseListView extends StatelessWidget {
  final List<Phrase> phraseList = Phrase.getPhrases();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(title: Text("B1 | Finance | Phrases")),
        body: ListView.builder(
            itemCount: phraseList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 6, right: 6),
                  child: phraseCard(phraseList[index], context));
            }));
  }
}

Widget phraseCard(Phrase phrase, BuildContext context) {
  return Card(
    elevation: 4.5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    child: InkWell(
        splashColor: Colors.blue[100],
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PhraseListViewDetails(phrase: phraseList[index])))
            },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(phraseList[index].text, style: TextStyle(fontSize: 19)),
        )),
  );
}

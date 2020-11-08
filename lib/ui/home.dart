import 'package:flutter/material.dart';
import 'package:sg_flutter_mobile_app/model/phrase.dart';

class PhraseListView extends StatelessWidget {
  final List<Phrase> phraseList = Phrase.getPhrases();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Phrases")),
        body: ListView.builder(
            itemCount: phraseList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 4.5,
                    shadowColor: Colors.blueAccent.shade400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(phraseList[index].phrase,
                      style: TextStyle(
                        fontSize: 17.0
                      )
                      ),
                    )),
              );
            }));
  }
}

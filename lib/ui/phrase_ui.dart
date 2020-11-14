import 'package:flutter/material.dart';
import 'package:sg_flutter_mobile_app/model/phrase.dart';

class PhraseListViewDetails extends StatelessWidget {
  final Phrase phrase;

  const PhraseListViewDetails({Key key, this.phrase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(title: Text("B1 | Finance | Phrase Details")),
        body: ListView.builder(
            itemCount: phrase.phraseComponents.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                const EdgeInsets.only(top: 8, bottom: 0, left: 6, right: 6),
                child: Card(
                  elevation: 4.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: InkWell(
                      splashColor: Colors.blue[100],
                      /*onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhraseListViewDetails(
                                    sentence: phrase.phraseElements[index])))
                      },*/
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: phraseComponent(),
                      )),
                ),
              );
            }));
  }
}

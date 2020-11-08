import 'package:sg_flutter_mobile_app/model/sentence.dart';
import 'package:sg_flutter_mobile_app/model/word.dart';

class Phrase {
  static List<Phrase> getPhrases() => [
        Phrase(
            "Neben dem US-Wahlspektakel sorgten unter anderem auch jede Menge Unternehmenszahlen für Kursbewegungen.",
            []),
        Phrase(
            "Guo wirft der Schweizer Grossbank vor, durch einen Margin Call 500 Millionen Dollar verloren zu haben. ",
            []),
        Phrase(
            "Die Postfinance hat beim Bund Gewicht: Die Aktiengesellschaft im Besitz der Schweizerischen Post macht in der konsolidierten Bilanz des Bundes rund ein Drittel aus und ihr Eigenkapital beläuft sich auf 25 Prozent des Eigenkapitals des Bundes.",
            []),
        Phrase(
            "Die gute Nachricht ist, dass Investieren und erfolgreicher Vermögensaufbau nicht kompliziert sein müssen.",
            [
              Sentence("Die gute Nachricht ist",
                  [Word("Die"), Word("gute"), Word("Nachricht"), Word("ist")]),
              Sentence(
                  "dass Investieren und erfolgreicher Vermögensaufbau nicht kompliziert sein müssen",
                  [
                    Word("dass"),
                    Word("Investieren"),
                    Word("erfolgreicher"),
                    Word("Vermögensaufbau"),
                    Word("nicht"),
                    Word("kompliziert"),
                    Word("sein"),
                    Word("müssen")
                  ])
            ]),
        Phrase(
            "Auf der Seite von Falcon hiess es, nachdem Verkauf des Luxemburger Fondsgeschäfts an Alpina Capital sei ein weiterer wichtiger Schritt im Auflösungsprozess der Privatbank erfolgt.",
            []),
        Phrase(
            "One Swiss Bank will wachsen: Neben den Falcon-Assets übernimmt sie nun die Mehrheit der Banque Profil de Gestion. Diese gehört zur italienischen Banca Profilo.",
            []),
        Phrase(
            "Der Fall schwelt schon länger: Vor etwas mehr als einem Jahr wurde publik, dass David Joseph, damals Deloitte Partner und auf Banken spezialisierter Forensik-Experte, aus der Partnerschaft verbannt wurde und das Unternehmen in diesem Januar verlassen musste.",
            []),
        Phrase(
            "Joseph konnte sich angeblich nicht in der vereinbarten Zeit mit dem Ausschuss treffen, weil er krank war, schickte aber ein schriftliches Memorandum, in dem er die gegen ihn erhobenen Vorwürfe bestritt.",
            [])
      ];

  String text;
  List<Sentence> phraseElements;

  Phrase(this.text, this.phraseElements);
}

import 'package:flutter/material.dart';

void testKode() {
  print('------------- Start --------------');
  int etHeltal = 1234;
  print(etHeltal);

  List<String> navne = ['henrik', 'lars', 'Belinda', 'Birgitte'];
  print(navne);
  // Arrays i Swift havde .count
  print('Der er ${navne.length} navne i listen');
  // Vi kan tilføje elementer til vores Liste
  navne.add('Søren');
  print(navne);
  print(navne.first);
  print(navne.last);
  // Jeg kan søge i listen
  print(
    navne.indexOf('lars'),
  );

  print(navne[3]);

  navne.clear();
  print(navne.length);

  // I Swift har vi noget der hedder et dictionary.
  Map<String, int> dictionary = {'Henrik': 49, 'Lars': 34, 'Belinda': 27};
  print(dictionary);
  print(dictionary.length);
  print(dictionary['Lars']);

  // Set findes også i Swift.
  Set<String> skurke = Set();
  skurke.add('Donald');
  print(skurke.length);
  skurke.add('Xi');
  print(skurke.length);
  print(skurke);
  skurke.add('Mette');
  print(skurke.length);

  // Nu kloner vi Donald Trump.
  skurke.add('Donald');
  print(skurke.length);

  //DateTime til dato og  tid, Duration til Periode.
  DateTime ligenu = DateTime.now();
  print(ligenu);
  print(
    ligenu.add(
      Duration(hours: 12),
    ),
  );

  Uri enURL =
      Uri.parse('https://bidblog.dk/lektion-18/tirsdag?parm1=nr1&parm2=nr2');
  print(enURL);
  //Vi kan spørge på dele af url (uri)
  print(enURL.scheme);
  print(enURL.path);
  print(enURL.pathSegments.last);

  //Jeg kan også få parameterne til vores url
  print(enURL.queryParameters);

  print('------------- Slut  --------------');
}

abstract class Skabning {
  void sigHej() {
    print('Hej');
  }

  // Vi laver en protokol metode
  int maxLeveAlder();
}

abstract class MenneskeDelegate {
  void slaaGraes();
  void spisMad();
}

// Swift
// public, internal, private, file-priavte.

class EnMand extends Skabning implements MenneskeDelegate {
  bool _harEnPenis = true;

  bool get harEnPenis => _harEnPenis;

  @override
  void sigHej() {
    print('En mand siger hej');
  }

  void _vaskOp() {
    print('En mand vasker op');
  }

  @override
  int maxLeveAlder() {
    return 100;
  }

  @override
  void spisMad() {}

  @override
  void slaaGraes() {}
}

void testClasser() {
  EnMand enSkabning = EnMand();

  enSkabning.sigHej();
  //enSkabning.vaskOp();
  print(enSkabning.harEnPenis);

  Maaneder enMaaned = Maaneder.maj;

  print(enMaaned);
  print(enMaaned.index);

  print(MineFarver.brun);
  print(MineFarver.hvid);
}

enum Maaneder { jan, feb, mar, apr, maj, jun, jul, aug, sep, okt, nov, dec }

class MineFarver {
  static const Color brun = Colors.brown;
  static const Color hvid = Colors.white;
  static const Color graa = Color(0xff808080);
// 0x = Her kommer en hex værdi
// ff = Alpha kanalen.
// Resten = #808080
}

void enFunktionUdenParameter() {}

void enFunktionMedDefaultParameter(String mitNavn, [int minAlder = 49]) {
  print('$mitNavn er $minAlder år');
}

void enFunktionMedValgfriParameter({String mitNavn, @required int minAlder}) {
  print('$mitNavn er $minAlder år');
}

void enFunktion2(int hoejde, {int bredde}) {}

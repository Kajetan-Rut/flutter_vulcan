import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  static const routeName = '/SubjectPage';

  @override
  Widget build(BuildContext context) {
    List<List<Map<String, String>>> table = [
      [
        {
          'figure': '5',
          'title': 'Kartkówka - alkohole',
          'date': '22.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 5',
        },
        {
          'figure': '4',
          'title': 'Związki węgla z wodorem',
          'date': '15.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 4',
        },
        {
          'figure': '4',
          'title': 'Węglowodory nasycone - alkany',
          'date': '22.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 4',
        },
        {
          'figure': '5-',
          'title': 'Karta pracy - szereg homologiczny alkenów, eten',
          'date': '22.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 5-',
        },
      ],
      [
        {
          'figure': '6',
          'title': 'Dodatkowa aktywność',
          'date': '12.04.2021, waga: 1.0',
          'catergory': 'kategoria: Aktywność, ocena: 6',
        },
        {
          'figure': 'BP',
          'title': 'Ćwiczenia do działu 3. Ekologia',
          'date': '09.04.2021, waga: 1.0',
          'catergory': 'kategoria: Zadanie domowe, ocena: brak pracy',
        },
        {
          'figure': '4',
          'title': 'Sprawdzian z działu 3. Ekologia.',
          'date': '30.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 4',
        },
      ],
      [
        {
          'figure': '+',
          'title': 'Zaangażowanie i praca na lekcji',
          'date': '13.04.2021, waga: 1.0',
          'catergory': 'kategoria: Aktywność, ocena: +',
        },
        {
          'figure': '3+',
          'title':
              'Kartkówka - Sytuacja na Dalekim wschodzie po II wojnie światowej',
          'date': '13.04.2021, waga: 1.0',
          'catergory': 'kategoria: Kartkówka, ocena: 3+',
        },
      ],
      [
        {
          'figure': 'BZ',
          'title': 'P dom - podawaine ceny ubrań',
          'date': '18.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: Brak zadania',
        },
        {
          'figure': 'ZW',
          'title': 'Pr. dom - zaimki wskazujące',
          'date': '18.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: Zadanie wykonane',
        },
        {
          'figure': 'ZW',
          'title': 'Zadanie online - LA ROPA',
          'date': '22.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: Zadanie wykonane',
        },
        {
          'figure': 'BN',
          'title': 'Pr. domowa - notatka w zeszycie',
          'date': '22.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: Brak notatki',
        },
      ],
      [
        {
          'figure': '-',
          'title': 'Braki (pracy domowej, przyborów)',
          'date': '23.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: -',
        },
        {
          'figure': '67',
          'title': 'Próbny egzamin ósmoklasisty marzec 2021',
          'date': '22.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżace, ocena: 67 (%)',
        },
        {
          'figure': '58',
          'title': 'Egzamin próbny luty 2021',
          'date': '15.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 58 (%)',
        },
      ],
      [
        {
          'figure': '1+',
          'title': 'zadania zamknięte wraz z opisem',
          'date': '31.03.2021, waga: 1.0',
          'catergory': 'kategoria: Zadanie domowe, ocena: 1+',
        },
        {
          'figure': '52',
          'title': 'próbny CKE - procenty',
          'date': '31.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 52 (%)',
        },
        {
          'figure': '5',
          'title': 'aktywność',
          'date': '31.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 5',
        },
        {
          'figure': '4',
          'title': 'zadania otwarte',
          'date': '31.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 4',
        },
      ],
      [
        {
          'figure': '+',
          'title': 'Zaangażowanie w pracę na lekcji',
          'date': '13.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: +',
        },
        {
          'figure': '5',
          'title': 'Kampanie społeczne - uzupełnianie padletu',
          'date': '29.03.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 5',
        },
      ],
      [
        {
          'figure': '5',
          'title': 'postawa - marzec',
          'date': '22.04.2021, waga: 1.0',
          'catergory': 'kategoria: Bieżące, ocena: 5',
        },
      ],
    ];
    var subject = ModalRoute.of(context).settings.arguments as int;
    var items = table[subject];

    Widget buildVerticalListView() => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              child: ListTile(
                leading: Text(
                  item['figure'],
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      item['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      item['date'],
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      item['catergory'],
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Oceny z przedmiotu'),
        ),
        body: buildVerticalListView(),
      ),
    );
  }
}

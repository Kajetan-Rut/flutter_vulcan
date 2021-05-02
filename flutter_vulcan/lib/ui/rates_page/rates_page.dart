import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/common_widgets/bottom_navigation.dart';
import 'package:flutter_vulcan/ui/subject_page/subject_page.dart';
import 'package:flutter_vulcan/utils/color_utils.dart';
import 'package:flutter_vulcan/utils/consts.dart';

class RatesPage extends StatelessWidget {
  static const routeName = '/RatesPage';

  @override
  Widget build(BuildContext context) {
    _goToPage(int subject) {
      Navigator.of(context).pushNamed(
        SubjectPage.routeName,
        arguments: subject,
      );
    }

    Widget _myListView() {
      return ListView(
        children: <Widget>[
          InkWell(
            onTap: () => _goToPage(0),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Chemia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: '4, '),
                      new TextSpan(
                        text: '5-, ',
                        style: new TextStyle(
                          color: Colors.deepPurple[300],
                        ),
                      ),
                      new TextSpan(
                        text: '4, ',
                        style: new TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                      new TextSpan(
                        text: '5 ',
                        style: new TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(1),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Biologia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '4, ',
                        style: new TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      new TextSpan(
                        text: 'brak pracy, ',
                        style: new TextStyle(
                          color: Colors.deepPurple[300],
                        ),
                      ),
                      new TextSpan(
                        text: '6',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: InkWell(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(2),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Historia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '3+, ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: '+ ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(3),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Język hiszpański',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: 'Zadanie wykonane, ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: 'brak notatki, ',
                        style: new TextStyle(
                          color: Colors.deepPurple[300],
                        ),
                      ),
                      new TextSpan(
                        text: 'Brak zadania, ',
                        style: new TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      new TextSpan(
                        text: 'Zadanie wykonane ',
                        style: new TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(4),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Język polski',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '58 (%), ',
                        style: new TextStyle(
                          color: Colors.deepPurple[300],
                        ),
                      ),
                      new TextSpan(
                        text: '67 (%), ',
                        style: new TextStyle(
                          color: Colors.deepPurple[300],
                        ),
                      ),
                      new TextSpan(
                        text: '- ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(5),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Matematyka',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '1+, ',
                        style: new TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      new TextSpan(
                        text: '52 (%), ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: '5, ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: '4 ',
                        style: new TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(6),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Wiedza o społeczeństwie',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '5, ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      new TextSpan(
                        text: '+ ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _goToPage(7),
            onDoubleTap: () {},
            child: Card(
              child: ListTile(
                title: Text(
                  'Wychowanie fizyczne',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '5 ',
                        style: new TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Oceny'),
          actions: [
            InkWell(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                foregroundColor: ColorUtils.getColorFromHex(Consts.COLOR_BLUE1),
                child: Icon(
                  Icons.perm_identity,
                  size: 26,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: _myListView(),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: 1,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/common_widgets/bottom_navigation.dart';
import 'package:flutter_vulcan/ui/common_widgets/show_exception_alert_dialog.dart';
import 'package:flutter_vulcan/ui/dashboard/menu_list.dart';
import 'package:flutter_vulcan/ui/rates_page/rates_page.dart';
import 'package:flutter_vulcan/utils/color_utils.dart';
import 'package:flutter_vulcan/utils/consts.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/DashboardPage';

  @override
  Widget build(BuildContext context) {
    _goToPage(String route) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacementNamed(route);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dzienniczek VULCAN'),
        actions: [
          InkWell(
            onTap: () {
              showExceptionAlertDialog(
                context,
                title: 'Informacja',
                exception:
                    "W tej wersji aplikacji dostępne są jedynie widoki Oceny oraz Oceny z przedmiotu.",
              );
            },
            onDoubleTap: () {},
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                showExceptionAlertDialog(
                  context,
                  title: 'Informacja',
                  exception:
                      "W tej wersji aplikacji dostępne są jedynie widoki Oceny oraz Oceny z przedmiotu.",
                );
              },
              onDoubleTap: () {},
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Następna lekcja'.toUpperCase(),
                        style: TextStyle(
                          color: ColorUtils.getColorFromHex(Consts.COLOR_GREY),
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Chemia, sala 202',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Nowe oceny'.toUpperCase(),
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        showExceptionAlertDialog(
                          context,
                          title: 'Informacja',
                          exception:
                              "W tej wersji aplikacji dostępne są jedynie widoki Oceny oraz Oceny z przedmiotu.",
                        );
                      },
                      onDoubleTap: () {},
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: ColorUtils.getColorFromHex(
                                    Consts.COLOR_VIOLET),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Icon(
                                Icons.block,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Brak nowych ocen',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => _goToPage(RatesPage.routeName),
                      onDoubleTap: () {},
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Zobacz wszystkie oceny',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 130,
                      child: MenuList(
                        selectedIndex: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 0,
      ),
    );
  }
}

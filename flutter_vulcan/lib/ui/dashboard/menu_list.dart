import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/common_widgets/menu_dashboard_icon.dart';
import 'package:flutter_vulcan/ui/common_widgets/show_exception_alert_dialog.dart';
import 'package:flutter_vulcan/ui/rates_page/rates_page.dart';

class MenuList extends StatelessWidget {
  final int selectedIndex;
  MenuList({
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    _goToPage(String route) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacementNamed(route);
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        InkWell(
          onTap: () => _goToPage(RatesPage.routeName),
          onDoubleTap: () {},
          child: MenuDashboardIcon(
            name: 'Nowe oceny',
            icon: Icons.home,
            isSelected: selectedIndex == 0 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Nowe wpisy frekwencyjne',
            icon: Icons.mail_outline,
            isSelected: selectedIndex == 1 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Nowe zadania domowe',
            icon: Icons.calendar_today_outlined,
            isSelected: selectedIndex == 2 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Najbliższe sprawdziany',
            icon: Icons.post_add_sharp,
            isSelected: selectedIndex == 3 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Najbliższe zastępstwa',
            icon: Icons.post_add_sharp,
            isSelected: selectedIndex == 3 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Informacje',
            icon: Icons.post_add_sharp,
            isSelected: selectedIndex == 3 ? true : false,
          ),
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
          child: MenuDashboardIcon(
            name: 'Lekcje planowane',
            icon: Icons.post_add_sharp,
            isSelected: selectedIndex == 3 ? true : false,
          ),
        ),
      ],
    );
  }
}

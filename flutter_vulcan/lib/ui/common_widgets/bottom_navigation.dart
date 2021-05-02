import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/additional_page.dart';
import 'package:flutter_vulcan/ui/common_widgets/menu_icon.dart';
import 'package:flutter_vulcan/ui/dashboard/dashboard_page.dart';
import 'package:flutter_vulcan/ui/plan_page.dart';
import 'package:flutter_vulcan/ui/rates_page/rates_page.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  BottomNavigation({this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    _goToPage(String route) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.of(context).pushReplacementNamed(route);
    }

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _goToPage(DashboardPage.routeName),
            onDoubleTap: () {},
            child: MenuIcon(
              name: 'Start',
              icon: Icons.home,
              isSelected: selectedIndex == 0 ? true : false,
            ),
          ),
          InkWell(
            onTap: () => _goToPage(RatesPage.routeName),
            onDoubleTap: () {},
            child: MenuIcon(
              name: 'Oceny',
              icon: Icons.star_rate,
              isSelected: selectedIndex == 1 ? true : false,
            ),
          ),
          InkWell(
            onTap: () => _goToPage(PlanPage.routeName),
            onDoubleTap: () {},
            child: MenuIcon(
              name: 'Plan',
              icon: Icons.calendar_today_outlined,
              isSelected: selectedIndex == 2 ? true : false,
            ),
          ),
          InkWell(
            onTap: () => _goToPage(AdditionalPage.routeName),
            onDoubleTap: () {},
            child: MenuIcon(
              name: 'Dodatkowe',
              icon: Icons.post_add_sharp,
              isSelected: selectedIndex == 3 ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}

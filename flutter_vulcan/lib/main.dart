import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_vulcan/ui/additional_page.dart';
import 'package:flutter_vulcan/ui/dashboard/dashboard_page.dart';
import 'package:flutter_vulcan/ui/plan_page.dart';
import 'package:flutter_vulcan/ui/rates_page/rates_page.dart';
import 'package:flutter_vulcan/ui/subject_page/subject_page.dart';
import 'package:flutter_vulcan/utils/color_utils.dart';
import 'package:flutter_vulcan/utils/consts.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _changeStatusbar() async {
      await FlutterStatusbarcolor.setStatusBarColor(
          ColorUtils.getColorFromHex(Consts.COLOR_BLUE));
      if (useWhiteForeground(ColorUtils.getColorFromHex(Consts.COLOR_BLUE))) {
        FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
      } else {
        FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
      }
    }

    _changeStatusbar();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Vulcan',
      theme: _buildLightTheme(context),
      home: DashboardPage(),
      routes: {
        DashboardPage.routeName: (ctx) => DashboardPage(),
        RatesPage.routeName: (ctx) => RatesPage(),
        SubjectPage.routeName: (ctx) => SubjectPage(),
        PlanPage.routeName: (ctx) => PlanPage(),
        AdditionalPage.routeName: (ctx) => AdditionalPage(),
      },
    );
  }

  AppBarTheme _appBarTheme(BuildContext context) {
    return AppBarTheme(
      color: ColorUtils.getColorFromHex(Consts.COLOR_BLUE),
      //backgroundColor: Colors.transparent,
      //foregroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }

  TabBarTheme _tabBar() {
    return TabBarTheme(
      labelColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white),
    );
  }

  ThemeData _buildLightTheme(BuildContext context) {
    final ThemeData base = ThemeData.light();
    final textTheme = Theme.of(context).textTheme;
    return base.copyWith(
      accentColor: Colors.white,
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      scaffoldBackgroundColor: ColorUtils.getColorFromHex(Consts.COLOR_BG),
      cardColor: Colors.white,
      errorColor: Colors.green,
      appBarTheme: _appBarTheme(context),
      toggleableActiveColor: Colors.white,
      unselectedWidgetColor: Colors.white,
      tabBarTheme: _tabBar(),
      textTheme: GoogleFonts.chakraPetchTextTheme(textTheme).copyWith(
        bodyText1: GoogleFonts.chakraPetch(
          textStyle: textTheme.bodyText1.copyWith(
            letterSpacing: 1.1,
          ),
        ),
        bodyText2: GoogleFonts.chakraPetch(
          textStyle: textTheme.bodyText2.copyWith(
            letterSpacing: 1.1,
          ),
        ),
        headline5: GoogleFonts.chakraPetch(
          textStyle: textTheme.headline5.copyWith(
            color: Colors.white,
            fontFamily: "Chakra Petch",
          ),
        ),
        headline6: GoogleFonts.chakraPetch(
          textStyle: textTheme.headline6.copyWith(
            color: Colors.white,
            fontFamily: "Chakra Petch",
            letterSpacing: 0.5,
          ),
        ),
      ),
      // textTheme: TextTheme(
      //   headline6: TextStyle(
      //     color: Colors.black87,
      //   ),
      // ),
    );
  }
}

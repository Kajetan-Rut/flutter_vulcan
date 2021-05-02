import 'package:flutter/material.dart';
import 'package:flutter_vulcan/ui/common_widgets/bottom_navigation.dart';

class AdditionalPage extends StatelessWidget {
  static const routeName = '/AdditionalPage';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dodatkowe'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'W tej wersji aplikacji dostępne są jedynie widoki Oceny oraz Oceny z przedmiotu.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: 3,
        ),
      ),
    );
  }
}

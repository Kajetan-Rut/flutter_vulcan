import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class PlatformWidget extends StatelessWidget {
  Widget buildCutertinoWidget(BuildContext context);
  Widget buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS)
      return buildCutertinoWidget(context);
    else
      return buildMaterialWidget(context);
  }
}

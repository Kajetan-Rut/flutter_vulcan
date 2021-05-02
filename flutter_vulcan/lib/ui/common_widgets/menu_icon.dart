import 'package:flutter/material.dart';
import 'package:flutter_vulcan/utils/color_utils.dart';
import 'package:flutter_vulcan/utils/consts.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String name;
  final bool isSelected;
  MenuIcon({
    this.name,
    this.icon,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 45,
        child: Column(
          children: [
            Icon(
              icon,
              size: 28,
              color: isSelected
                  ? ColorUtils.getColorFromHex(Consts.COLOR_BLUE)
                  : ColorUtils.getColorFromHex(Consts.COLOR_GREY1),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 10,
                color: isSelected
                    ? ColorUtils.getColorFromHex(Consts.COLOR_BLUE)
                    : ColorUtils.getColorFromHex(Consts.COLOR_GREY1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

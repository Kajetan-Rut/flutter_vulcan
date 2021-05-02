import 'package:flutter/material.dart';
import 'package:flutter_vulcan/utils/color_utils.dart';
import 'package:flutter_vulcan/utils/consts.dart';

class MenuDashboardIcon extends StatelessWidget {
  final IconData icon;
  final String name;
  final bool isSelected;
  MenuDashboardIcon({
    this.name,
    this.icon,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: isSelected
          ? ColorUtils.getColorFromHex(Consts.COLOR_BLUE)
          : Colors.white,
      child: Container(
        height: 130,
        width: 135,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                icon,
                size: 40,
                color: isSelected
                    ? Colors.white
                    : ColorUtils.getColorFromHex(Consts.COLOR_GREY1),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: isSelected
                        ? Colors.white
                        : ColorUtils.getColorFromHex(Consts.COLOR_GREY1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

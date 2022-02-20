import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../helper/utils/assets_helper.dart';
import '../../helper/utils/constants.dart';
import 'buttons/exit_drawer_button.dart';
import 'buttons/support_button.dart';
import 'tiles/drawer_tiles.dart';

class ScaffoldDrawer extends StatelessWidget {
  const ScaffoldDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size;
    _size = MediaQuery.of(context).size;
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLandscape = orientation == Orientation.landscape;
        double marginValue = isLandscape ? 30 : 0; //safearea
        return SizedBox(
          width: (isLandscape ? 0.4 : 0.6) * _size.width,
          child: Drawer(
            backgroundColor: Constants.scaffoldGreyColor,
            child: Row(
              children: [
                Gap(marginValue),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        child: Image.asset(
                          AssetsHelper.appLogo,
                          height: 55,
                          width: 90,
                        ),
                      ),
                      const DrawerTiles(),
                      const Gap(40),
                      const SupportButton(),
                      const Gap(60),
                      const ExitDrawerButton(),
                      const Gap(60),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

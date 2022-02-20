import 'package:flutter/material.dart';

import '../../../providers/all_providers.dart';
import 'custom_icon_button.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      onPressed: () => scaffoldKey.currentState!.openDrawer(),
      iconData: Icons.menu,
    );
  }
}

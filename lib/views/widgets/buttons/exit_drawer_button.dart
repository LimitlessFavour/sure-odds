import 'package:flutter/material.dart';

import '../../../providers/all_providers.dart';
import 'custom_icon_button.dart';

class ExitDrawerButton extends StatelessWidget {
  const ExitDrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomIconButton(
        iconData: Icons.exit_to_app,
        onPressed: () {
          if (scaffoldKey.currentState!.isDrawerOpen) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

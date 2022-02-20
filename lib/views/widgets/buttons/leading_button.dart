import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class LeadingButton extends StatelessWidget {
  const LeadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      iconData: Icons.arrow_back,
      onPressed: () {
        if (Navigator.canPop(context)) Navigator.pop(context);
      },
    );
  }
}

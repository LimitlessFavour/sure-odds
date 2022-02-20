import 'package:flutter/material.dart';

import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/utils/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 9.0),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Icon(
          iconData,
          color: Constants.textBlackColor,
          size: 20,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sure_odds/helper/extensions/context_extensions.dart';
import 'package:sure_odds/helper/utils/constants.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.leftValue,
    required this.label,
    required this.rightValue,
  }) : super(key: key);

  final String leftValue;
  final String label;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.056,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      height: 60,
      width: size.width * 0.80,
      decoration: BoxDecoration(
        color: Constants.greyColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftValue, style: context.headline5),
          Text(
            label,
            style: context.headline1.copyWith(color: Constants.textBlackColor),
          ),
          Text(rightValue, style: context.headline5),
        ],
      ),
    );
  }
}

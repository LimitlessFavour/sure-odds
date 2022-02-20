import 'package:flutter/material.dart';

import '../../../helper/extensions/context_extensions.dart';

class Advice extends StatelessWidget {
  const Advice(this.advice, {Key? key}) : super(key: key);

  final String? advice;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Visibility(
      visible: advice != null,
      child: Center(
        child: Container(
          width: size.width * 0.7,
          height: 48.0,
          margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Center(
            child: Text(advice ?? '', style: context.headline4),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'ticker_scaffold.dart';

class TickerBuilder extends StatelessWidget {
  const TickerBuilder({
    Key? key,
    required this.limitDuration,
    required this.child,
  }) : super(key: key);

  final DateTime limitDuration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (DateTime.now().isAfter(limitDuration)) {
            return const TickerContent();
          }
          return child;
        },
      ),
    );
  }
}

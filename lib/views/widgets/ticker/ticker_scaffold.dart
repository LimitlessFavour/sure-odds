import 'package:flutter/material.dart';

class TickerScaffold extends StatelessWidget {
  const TickerScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ticker has exploded\n Reach out to Limitless'),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: const [
            Icon(Icons.ac_unit),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DrawerIcon(),
                  DateSwitch(),
                ],
              ),
            ),
          ),
        ],

        // color: Colors.red,
      ),
    );
  }
}

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15.0),
      color: Colors.red,
      child: const Icon(Icons.menu),
    );
  }
}

class DateSwitch extends StatelessWidget {
  const DateSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final date = Pro
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15.0),
      color: Colors.red,
      child: Row(
        children: [
          const Icon(Icons.menu),
        ],
      ),
    );
  }
}

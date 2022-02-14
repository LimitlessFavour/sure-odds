import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:clock/clock.dart';

import 'helper/local_storage/key_value_storage_base.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint = setDebugPrint;
  await KeyValueStorageBase.init();
  runApp(const MyApp());
}

void setDebugPrint(String? message, {int? wrapWidth}) {
  final date = clock.now();
  var msg = '${date.year}/${date.month}/${date.day}';
  msg += ' ${date.hour}:${date.minute}:${date.second}';
  msg += ' $message';
  debugPrintSynchronously(
    msg,
    wrapWidth: wrapWidth,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sure Odds',
      initialRoute: AppRouter.initialRoute,
      theme: CustomTheme.mainTheme,
    );
  }
}

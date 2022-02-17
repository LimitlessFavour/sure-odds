import 'package:clock/clock.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'services/local_storage/key_value_storage_base.dart';
import 'views/screens/test_screen.dart';

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
    return DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        title: 'Sure Odds',
        // initialRoute: AppRouter.initialRoute,
        theme: ThemeData.light(),
        //
        home: const TestScreen(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        //
        // theme: CustomTheme.mainTheme,
      ),
    );
  }
}

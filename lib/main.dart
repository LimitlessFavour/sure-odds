import 'package:clock/clock.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'firebase_options.dart';
import 'helper/utils/custom_theme.dart';
import 'services/local_storage/key_value_storage_base.dart';
import 'views/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
    MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      tagForChildDirectedTreatment: TagForChildDirectedTreatment.unspecified,
      testDeviceIds: <String>[
        '6CA9A4B9808B362C3C15F802F57D9312',
        '003B39B7-44E7-4D70-9BC6-8CC17ACD5222',
      ],
    ),
  );
  ErrorWidget.builder = (FlutterErrorDetails details) => const SizedBox();
  debugPrint = setDebugPrint;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await KeyValueStorageBase.init();
  runApp(const MyApp());
}

void setDebugPrint(String? message, {int? wrapWidth}) {
  if (kReleaseMode) return;
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
    return ProviderScope(
      child: DevicePreview(
        enabled: false,
        // enabled: !kReleaseMode,
        builder: (context) => MaterialApp(
          title: 'Sure Odds',
          home: const HomeScreen(),
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: CustomTheme.mainTheme,
        ),
      ),
    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode && kIsWeb,
        builder: (context) => const TrustFoodApp(),
      ),
    ),
  );
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/routes/app_router_providers.dart';
import 'package:trust_food/src/shared/data/miscelaneous/envs.dart';
import 'package:trust_food/src/shared/domain/models/api_state_model.dart';
import 'package:trust_food/src/shared/shared_providers.dart';
import 'package:go_router/go_router.dart';

class TrustFoodApp extends ConsumerWidget {
  const TrustFoodApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(SharedProviders.apiRepositoryProvider, (previous, next) {
      _apiStateListener(
        ref: ref,
        next: next,
        previous: previous,
        context: context,
      );
    });
    final ThemeData themeData = ref.watch<ThemeData>(
      SharedProviders.themeNotifierProvider,
    );

    return MaterialApp.router(
      title: 'TrustFood',
      theme: themeData,
      routerConfig: ref.watch(appRouterProvider),
      builder:
          (context, child) =>
              Env().name != Envs.production
                  ? Env().name.isNotEmpty
                      ? Banner(
                        message: Env().name.toString(),
                        textDirection: TextDirection.ltr,
                        location: BannerLocation.topStart,
                        child: child,
                      )
                      : Banner(
                        message: "ENVLESS",
                        textDirection: TextDirection.ltr,
                        location: BannerLocation.topStart,
                        child: child,
                      )
                  : child!,
      supportedLocales: const [Locale('en', ''), Locale('pt', '')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: DevicePreview.locale(context),
    );
  }

  void _apiStateListener({
    required WidgetRef ref,
    required ApiState next,
    ApiState? previous,
    required BuildContext context,
  }) {
    next.maybeWhen(
      orElse: () {},
      signedOut: () {
        context.go('/login');
      },
    );
  }
}

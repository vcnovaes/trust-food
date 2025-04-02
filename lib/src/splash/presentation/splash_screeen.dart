import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
import 'package:trust_food/src/home/presentation/seller_home.dart';
import 'package:trust_food/src/login/presentation/login_screen.dart';
import 'package:trust_food/src/shared/design/tokens/default_color_tokens.dart';
import 'package:trust_food/src/shared/domain/types/user_type.dart';
import 'package:trust_food/src/splash/domain/usecase/splash_usecase.dart';
import 'package:trust_food/src/splash/splash_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static String route() => '/';

  const SplashScreen({super.key});
  @override
  ConsumerState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  bool _isAuthSuccess = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashUsecase, SplashState>(
      bloc: ref.watch(splashUsecaseProvider)?..add(const SplashEvent.started()),
      listener: _splashListener,
      listenWhen: _splashListenWhen,
      child: Scaffold(
        backgroundColor: DefaultColorTokens.neutralLightest,
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  void _splashListener(BuildContext context, SplashState state) {
    state.authRequestStatus.maybeWhen(
      orElse: () => {},
      failed: (_) => context.go('/selectuser'),
      succeeded: (_) {
        _isAuthSuccess = true;
        _checkNavigation(context, state.userType);
      },
    );
  }

  bool _splashListenWhen(SplashState previous, SplashState current) {
    return current.authRequestStatus != previous.authRequestStatus;
  }

  void _checkNavigation(BuildContext context, UserType userType) {
    if (_isAuthSuccess) {
      userType.map(
        seller: (_) {
          context.go(BuyerHomePage.route());
        },
        buyer: (_) {
          context.go(BuyerHomePage.route());
        },
      );
    }
  }
}

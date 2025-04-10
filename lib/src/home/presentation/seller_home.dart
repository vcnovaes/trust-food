import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trust_food/src/login/presentation/login_screen.dart';
import 'package:trust_food/src/shared/data/miscelaneous/storage_keys.dart';
import 'package:trust_food/src/shared/presentation/seller_content.dart';
import 'package:collection/collection.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/shared/shared_providers.dart';

class SellerHomePage extends ConsumerStatefulWidget {
  static String route() => '/seller_home';

  const SellerHomePage({super.key});

  @override
  ConsumerState<SellerHomePage> createState() => SellerHomePageState();
}

class SellerHomePageState extends ConsumerState<SellerHomePage> {
  Future<String?> getSellerIdFromEmail() async {
    final localStorageRepository = ref.read(
      SharedProviders.localStorageRepositoryProvider,
    );

    // Get the current user's email from storage
    final emailResult = await localStorageRepository.read(
      key: StorageKey.userEmail,
    );

    // If we can't get the email, return null
    if (emailResult.isFailure) return null;

    final currentUserEmail = emailResult.asSuccess.data;

    // Find the seller with the matching email
    final seller = mockSellers.firstWhereOrNull(
      (seller) => seller.email == currentUserEmail,
    );

    // Return the seller ID if found, otherwise return null
    return seller?.id;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: getSellerIdFromEmail(),
      builder: (context, snapshot) {
        final sellerId = snapshot.data;
        final isSeller = sellerId != null;

        return SellerContent(
          sellerId: sellerId ?? '',
          isSellerView: isSeller,
          onBackPressed: () {
            if (isSeller) {
              context.go(LoginScreen.route());
            } else {
              context.go('/buyer_home');
            }
          },
        );
      },
    );
  }
}

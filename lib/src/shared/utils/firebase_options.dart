// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCrCbdbit4c0m-u58lbh_XXQdEsZ0czoBk',
    appId: '1:175264350484:web:0d0012c05b2d4442a6c201',
    messagingSenderId: '175264350484',
    projectId: 'trust-food-698a0',
    authDomain: 'trust-food-698a0.firebaseapp.com',
    storageBucket: 'trust-food-698a0.firebasestorage.app',
    measurementId: 'G-VYTGFMH1HT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-2ALvx4SiIPthIYM8WnrGsqXONAwKRbE',
    appId: '1:175264350484:android:22cf1f5148236449a6c201',
    messagingSenderId: '175264350484',
    projectId: 'trust-food-698a0',
    storageBucket: 'trust-food-698a0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5ih6b9ytbAc2OXzxpTdfxhw06ZRb26Ks',
    appId: '1:175264350484:ios:b67e8c6eaae7a8daa6c201',
    messagingSenderId: '175264350484',
    projectId: 'trust-food-698a0',
    storageBucket: 'trust-food-698a0.firebasestorage.app',
    iosBundleId: 'com.example.trustFood',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5ih6b9ytbAc2OXzxpTdfxhw06ZRb26Ks',
    appId: '1:175264350484:ios:b67e8c6eaae7a8daa6c201',
    messagingSenderId: '175264350484',
    projectId: 'trust-food-698a0',
    storageBucket: 'trust-food-698a0.firebasestorage.app',
    iosBundleId: 'com.example.trustFood',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrCbdbit4c0m-u58lbh_XXQdEsZ0czoBk',
    appId: '1:175264350484:web:f6e7d7c0678b660fa6c201',
    messagingSenderId: '175264350484',
    projectId: 'trust-food-698a0',
    authDomain: 'trust-food-698a0.firebaseapp.com',
    storageBucket: 'trust-food-698a0.firebasestorage.app',
    measurementId: 'G-66K9MM94VJ',
  );

}
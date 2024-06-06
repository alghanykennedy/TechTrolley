// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAMqV3PckJhOr1eBWqNGN1ArqANgRxFEd4',
    appId: '1:29900649387:web:7f2cb6ba3842e3a72bd8ee',
    messagingSenderId: '29900649387',
    projectId: 'ecommerceapp-a9e27',
    authDomain: 'ecommerceapp-a9e27.firebaseapp.com',
    storageBucket: 'ecommerceapp-a9e27.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEqDH2Zo_ZD22ph-jw3olCZ3v0O7aIw8Y',
    appId: '1:29900649387:android:f7018c6d9d0754e42bd8ee',
    messagingSenderId: '29900649387',
    projectId: 'ecommerceapp-a9e27',
    storageBucket: 'ecommerceapp-a9e27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhVWGCzUBDxDzWiqJIIi8OcQGpRWhlrY4',
    appId: '1:29900649387:ios:ed2639071fad21212bd8ee',
    messagingSenderId: '29900649387',
    projectId: 'ecommerceapp-a9e27',
    storageBucket: 'ecommerceapp-a9e27.appspot.com',
    androidClientId: '29900649387-7r8s3h5tefk4udfth50jdi945gre39d0.apps.googleusercontent.com',
    iosClientId: '29900649387-hf01ves3h7m9n090s6seakjbo6b2rkih.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEcommerceApps',
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techtrolley/app.dart';
import 'package:techtrolley/data/repositories/authentication/authentication_repository.dart';
import 'package:techtrolley/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // -- Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // -- GetX Local Storage
  await GetStorage.init();

  // Todo: Init Payment Methods

  // -- Await Native Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // -- Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  // Todo: Initialize Authentication

  // Load all the Material Design / Themes/ Localizations / Bindings
  runApp(const App());
}

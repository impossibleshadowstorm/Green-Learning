import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_learning/services/storage_services.dart';
import 'package:green_learning/firebase_options.dart';

class Global {
  static late StorageServices storageServices;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      // name: "uniford-firebase-c4605",
    );
    storageServices = await StorageServices().init();
  }
}

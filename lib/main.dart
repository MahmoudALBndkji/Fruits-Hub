import 'package:flutter/material.dart';
import 'package:fruits_hub/fruits_hub.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fruits_hub/firebase_options.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  runApp(const FruitsHub());
}

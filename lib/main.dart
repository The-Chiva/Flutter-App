
import 'package:firebase/features/app/app.dart';
import 'package:firebase/features/auth/auth_page.dart';
import 'package:firebase/firebase_options.dart';
import 'package:firebase/utils/stores/pref.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp(notLoggedIn: await AppPref.getDeviceLogIn()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.notLoggedIn,  });
  final bool notLoggedIn;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: !notLoggedIn ? AuthPage() : App(),
    );
  }
}
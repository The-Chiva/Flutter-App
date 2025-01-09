import 'dart:developer';

import 'package:firebase/utils/devices/devices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  static Future<void> saveDeviceLogIn() async{  
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final saved = await prefs.setBool(await Devices.locaHostname(), true);
    log(saved ? "Saved ${await Devices.locaHostname()} successfully" : "Error saving device login");
  }
  static Future<bool> getDeviceLogIn() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(await Devices.locaHostname()) ?? false;
  }
}
import 'dart:io';

class Devices {
  static Future<String> locaHostname() async {
    final devices = Platform.localHostname;
    return devices.replaceAll(" ", "_");
  }
  
}
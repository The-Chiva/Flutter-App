import 'package:firebase/core/firebase/authentication.dart';
import 'package:firebase/features/app/app.dart';
import 'package:firebase/utils/stores/pref.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/snackbars/snackbar.dart';

class AuthViewModel extends GetxController {
  // -- | --
  final RxBool isSignIn = true.obs;
  final RxBool showPass = false.obs;
  final RxBool showConPass = false.obs;
  final RxBool loading = false.obs;
  // -- | --
  final emailTextCtr = TextEditingController();
  final passTextCtr = TextEditingController();
  final conPassTextCtr = TextEditingController();
  // -- | --
  final authentication = FirebaseAuthentication();

  void togglePage() async {
    isSignIn.value = !isSignIn.value;
    emailTextCtr.clear();
    passTextCtr.clear();
    conPassTextCtr.clear();
    update();
  }

  void clears() {
    emailTextCtr.clear();
    passTextCtr.clear();
    conPassTextCtr.clear();
    showPass.value = false;
    showConPass.value = false;
    update();
  }

  bool allFieldIsCorrect() {
    if (isSignIn.value) {
      if (emailTextCtr.text.isNotEmpty || passTextCtr.text.isNotEmpty) {
        return true;
      } else {
        Snackbars.error(message: "Please fill in all fields.");
      }
    } else {
      if (emailTextCtr.text.isNotEmpty &&
          passTextCtr.text.isNotEmpty &&
          conPassTextCtr.text.isNotEmpty) {
        if (passTextCtr.text == conPassTextCtr.text) {
          return true;
        } else {
          Snackbars.error(message: "Passwords do not match.");
        }
      } else {
        Snackbars.error(message: "Please fill in all fields.");
      }
    }
    return false;
  }

  void onUserRequest() async {
    if (allFieldIsCorrect()) {
      loading.value = true;
      if (isSignIn.value) {
        if (await authentication.signInWithEmailAndPassword(
          email: emailTextCtr.text,
          password: passTextCtr.text,
        )) {
          // Go to the next
          await AppPref.saveDeviceLogIn().whenComplete(
            () => Get.to(() => App()),
          );
          loading.value = false;
          clears();
        } else {
          // Show error message
          Snackbars.error(message: "Can't sign in.");
          loading.value = false;
        }
      } else {
        if (await authentication.signUpWithEmailAndPassword(
          email: emailTextCtr.text,
          password: passTextCtr.text,
        )) {
          // Go to the next
          await AppPref.saveDeviceLogIn().whenComplete(
            () => Get.to(() => App()),
          );
          loading.value = false;
          clears();
        } else {
          // Show error message
          Snackbars.error(message: "Can't sign up your account.");
        }
      }
    }
  }
}

import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/asset_button.dart';
import 'package:firebase/common/widgets/input_field.dart';
import 'package:firebase/features/auth/auth_view_model.dart';
import 'package:firebase/utils/keys/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final authViewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  Text(
                    authViewModel.isSignIn.value ? "Sign In" : "Sign Up",
                    style:
                        textStyle(fontSize: 32, fontFamily: Typographys.bold),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(32),
                    child: SvgPicture.asset(
                      height: 200,
                      width: 200,
                      authViewModel.isSignIn.value
                          ? "assets/images/visualization.svg"
                          : "assets/images/day_off.svg",
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Please enter your email & password to sign ${authViewModel.isSignIn.value ? "in" : "up"} your account.',
                    style: textStyle(),
                  ),
                  const SizedBox(height: 32),
                  InputField(
                    controller: authViewModel.emailTextCtr,
                    hint: "Enter your email",
                  ),
                  const SizedBox(height: 16),
                  InputField(
                    onTab: () => authViewModel.showPass.value =
                        !authViewModel.showPass.value,
                    icon: !authViewModel.showPass.value
                        ? "assets/images/eye.svg"
                        : "assets/images/eye_splash.svg",
                    controller: authViewModel.passTextCtr,
                    hint: "Enter your password",
                    hidden: authViewModel.showPass.value,
                  ),
                  if (!authViewModel.isSignIn.value) const SizedBox(height: 16),
                  if (!authViewModel.isSignIn.value)
                    InputField(
                      onTab: () => authViewModel.showConPass.value =
                          !authViewModel.showConPass.value,
                      icon: !authViewModel.showConPass.value
                          ? "assets/images/eye.svg"
                          : "assets/images/eye_splash.svg",
                      controller: authViewModel.conPassTextCtr,
                      hint: "Enter your password",
                      hidden: authViewModel.showConPass.value,
                    ),
                  const SizedBox(height: 32),
                  Center(
                    child: AssetButton(
                      width: 150,
                      onTab: () async => authViewModel.onUserRequest(),
                      color: Colors.green[600],
                      text: authViewModel.loading.value
                          ? "Loading..."
                          : authViewModel.isSignIn.value
                              ? "Sign In"
                              : "Sign Up",
                      textStyle: textStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 32),
                  AssetButton(
                    onTab: () async => authViewModel.togglePage(),
                    text: authViewModel.isSignIn.value
                        ? "Create new account ?"
                        : "Already have an account ?",
                    textStyle: textStyle(color: Colors.blue[800]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

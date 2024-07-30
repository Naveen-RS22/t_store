import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get instance => Get.find();

  signupPage() {
    Get.to(SignUpScreen);
  }
}

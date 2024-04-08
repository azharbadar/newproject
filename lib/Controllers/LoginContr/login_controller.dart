import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  var isPasswordVisible = false.obs;
  RxBool isPassword = true.obs;
  RxBool isLoading = false.obs;
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}

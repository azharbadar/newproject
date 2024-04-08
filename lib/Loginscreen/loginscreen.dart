import 'package:dealsabaadproject/Controllers/LoginContr/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: loginController.loginFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back",
                    style: GoogleFonts.montserrat(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // height: 50,
                  // width: Get.width,
                  child: TextFormField(
                    // controller: loginController.phoneController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors
                              .black, // Change this color as per your requirement
                          width: 1.0,
                        ),
                      ),
                      hintText: "Email",
                      contentPadding: const EdgeInsets.all(15),
                      hintStyle: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Obx(
                  () => Container(
                    // height: 50,
                    width: Get.width,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: loginController.passwordController,
                      obscureText: !loginController.isPasswordVisible.value,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        // hintText: "E-commerce",
                        // contentPadding: const EdgeInsets.only(top: 30, left: 16),
                        hintText: "password",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.normal),

                        suffixIcon: InkWell(
                          onTap: () {
                            if (loginController.isPassword.value == true) {
                              loginController.isPassword.value = false;
                            } else {
                              loginController.isPassword.value = true;
                            }
                          },
                          child: IconButton(
                            icon: Icon(
                              loginController.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              // color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              loginController.togglePasswordVisibility();
                            },
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Forgot your Password",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: Get.width,
                  height: 52,
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffffd624),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Don’t have an account?",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    Text("Register Now",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

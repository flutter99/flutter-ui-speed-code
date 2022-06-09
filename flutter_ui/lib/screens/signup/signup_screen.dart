import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/controllers/signup_controller.dart';
import 'package:flutter_ui/screens/login/login_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_field.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(SignupController());
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// app icon
                SizedBox(height: height * 0.05),
                Image.asset(
                  AppIcons.appLogo,
                  height: 70,
                ),

                /// Don't Have an Account text
                SizedBox(height: height * 0.05),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have account?',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10.0)),
                      TextSpan(
                        text: 'SIGN IN',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(
                                const LoginScreen(),
                              ),
                      ),
                    ],
                  ),
                ),

                /// full name field
                SizedBox(height: height * 0.06),
                CustomTextField(
                  controller: controller.nameController,
                  obscureText: false,
                  hintText: 'Full Name',
                  keyboardType: TextInputType.name,
                  prefixIconPath: AppIcons.userIcon,
                  suffixIcon: null,
                ),

                /// email field
                SizedBox(height: height * 0.02),
                CustomTextField(
                  controller: controller.emailController,
                  obscureText: false,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIconPath: AppIcons.emailIcon,
                  suffixIcon: null,
                ),

                /// password field
                SizedBox(height: height * 0.02),
                CustomTextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  hintText: 'Password',
                  keyboardType: TextInputType.text,
                  prefixIconPath: AppIcons.lockIcon,
                  suffixIcon: null,
                ),

                /// signup button
                SizedBox(height: height * 0.05),
                CustomButton(
                  onTap: () {},
                  btnText: 'Sign Up',
                ),

                /// Terms of services
                SizedBox(height: height * 0.03),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By Signing Up, You agree our  ',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      TextSpan(
                        text: 'TERMS OF SERVICES',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                          decoration: TextDecoration.underline,
                        ),

                        ///recognizer: TapGestureRecognizer(),
                      ),
                    ],
                  ),
                ),

                /// login with Google button
                SizedBox(height: height * 0.04),
                CustomButton(
                  onTap: () {},
                  btnText: '',
                  btnColor: AppColors.whiteColor,
                  btnDataRow: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.googleIcon),
                      const SizedBox(width: 8.0),
                      Text(
                        'Login with Google',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),

                /// login with facebook
                SizedBox(height: height * 0.02),
                CustomButton(
                  onTap: () {},
                  btnText: '',
                  btnColor: AppColors.whiteColor,
                  btnDataRow: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.fbIcon),
                      const SizedBox(width: 8.0),
                      Text(
                        'Login with Facebook',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

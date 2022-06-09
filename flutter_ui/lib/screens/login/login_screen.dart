import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/constants/app_colors.dart';
import 'package:flutter_ui/constants/app_icons.dart';
import 'package:flutter_ui/controllers/login_controller.dart';
import 'package:flutter_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ui/screens/signup/signup_screen.dart';
import 'package:flutter_ui/widgets/custom_button.dart';
import 'package:flutter_ui/widgets/custom_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
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
                        text: 'Don\'t have an account?',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10.0)),
                      TextSpan(
                        text: 'SIGN UP',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(
                                const SignupScreen(),
                              ),
                      ),
                    ],
                  ),
                ),

                /// email field
                SizedBox(height: height * 0.06),
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

                /// Login button
                SizedBox(height: height * 0.05),
                CustomButton(
                  onTap: () {},
                  btnText: 'Login',
                ),

                /// forgot password Button
                SizedBox(height: height * 0.01),
                TextButton(
                  onPressed: () {
                    Get.to(ForgotPasswordScreen());
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),

                /// login with Google button
                SizedBox(height: height * 0.08),
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

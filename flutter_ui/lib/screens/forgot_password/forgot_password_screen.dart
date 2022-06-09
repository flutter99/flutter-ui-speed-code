import 'package:flutter/material.dart';
import 'package:flutter_ui/controllers/forgot_pass_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../widgets/custom_field.dart';

class ForgotPasswordScreen extends GetView<ForgotPassController> {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(ForgotPassController());
    return Scaffold(
      backgroundColor: AppColors.mainColor,

      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// app icon
              SizedBox(height: height * 0.05),
              Image.asset(AppIcons.appLogo,
                height: 70,
              ),

              /// Don't Have an Account text
              SizedBox(height: height * 0.05),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Forgot Password',
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whiteColor,
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
            ],
          ),
        ),
      ),
    );
  }
}

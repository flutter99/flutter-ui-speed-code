import 'package:flutter/material.dart';
import 'package:flutter_ui/constants/app_colors.dart';
import 'package:flutter_ui/constants/app_icons.dart';
import 'package:flutter_ui/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Image.asset(AppIcons.appLogo),
      ),
    );
  }
}

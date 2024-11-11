import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/controllers/auth_controller.dart';
import 'package:proapp/utils/app_colors.dart';
import 'package:proapp/utils/assets_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        AuthController.initializeUser(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsConstants.logoPath,
              width: 331,
              height: 225,
            ),
            const SizedBox(height: 72),
            const CustomText(
              "Shop Your Daily \nNecessary",
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

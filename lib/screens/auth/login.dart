import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/componetns/custom_textField.dart';
import 'package:proapp/componetns/social_button.dart';
import 'package:proapp/screens/auth/forgot_password.dart';
import 'package:proapp/screens/home/home_screen.dart';
import 'package:proapp/utils/assets_constants.dart';
import 'package:proapp/utils/util_functions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 96,
              ),
              const CustomText(
                "Login",
                fontSize: 25,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                AssetsConstants.logoPath,
                width: 202,
                height: 138,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                controller: _email,
                hintText: "Email",
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: _password,
                hintText: "Password",
                isObscure: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    //forgot pwd page
                    UtilFunctions.navigateTo(context, const ForgotPassword());
                  },
                  child: const CustomText(
                    "Forgot Your Password",
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              CustomButton(
                onTap: () {
                  UtilFunctions.navigateTo(context, const HomeScreen());
                },
                text: "Login",
              ),
              const SizedBox(
                height: 23,
              ),
              const CustomText(
                "Or login with social accont",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    onTap: () {
                      //
                    },
                    iconPath: AssetsConstants.logoPath,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SocialButton(
                    onTap: () {
                      //
                    },
                    iconPath: AssetsConstants.logoPath,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/componetns/custom_textField.dart';
import 'package:proapp/utils/assets_constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 96,
              ),
              const CustomText(
                "Forgot Password",
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
                height: 100,
              ),
              const CustomText(
                "used to refer to one or some of a thing or number of things, no matter how much or how many.",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                controller: _email,
                hintText: "Email",
              ),
              const SizedBox(
                height: 68,
              ),
              CustomButton(
                onTap: () {},
                text: "Send",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

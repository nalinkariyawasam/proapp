import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/componetns/custom_textField.dart';
import 'package:proapp/controllers/auth_controller.dart';
import 'package:proapp/screens/auth/login.dart';
import 'package:proapp/utils/assets_constants.dart';
import 'package:proapp/utils/util_functions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
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
                "SingUp",
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
                controller: _name,
                hintText: "Name",
              ),
              const SizedBox(
                height: 8,
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
                    //login page
                    UtilFunctions.navigateTo(context, const Login());
                  },
                  child: const CustomText(
                    "Already have an account",
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
                  if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                    // start creating the user account
                    AuthController.signUpUser(_email.text, _password.text);
                  } else {
                    // shows a error dialog
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Validation Error',
                      desc: 'Fill all the fields !',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  }
                },
                text: "SignUp",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

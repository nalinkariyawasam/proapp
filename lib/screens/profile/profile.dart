import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  "Profile",
                  fontSize: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 122,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.person,
                size: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              "Name",
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomText(
              "nalin@gmail.com",
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 123,
            ),
            CustomButton(
              onTap: () {},
              text: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}

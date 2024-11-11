
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Function() onTap;
  final String iconPath;
  const SocialButton({
    super.key,
    required this.onTap,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        width: 92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Image.asset(
          iconPath,
        ),
      ),
    );
  }
}

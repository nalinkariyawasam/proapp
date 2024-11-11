
import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.add,
          size: 18,
        ),
        SizedBox(
          width: 10,
        ),
        CustomText(
          "1",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.add,
          size: 18,
        ),
      ],
    );
  }
}

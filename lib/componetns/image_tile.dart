

import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    required this.height,
    required this.width,
    required this.imgUrl,
    super.key,
  });

  final double width;
  final double height;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(imgUrl),
          ),
        ],
      ),
    );
  }
}

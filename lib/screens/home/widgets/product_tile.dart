import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/models/vegitable.dart';
import 'package:proapp/screens/product_details/product_details.dart';
import 'package:proapp/utils/app_colors.dart';
import 'package:proapp/utils/util_functions.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.vegitable,
  });

  final Vegitable vegitable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UtilFunctions.navigateTo(
          context,
          ProductDetail(
            vegitable: vegitable,
          ),
        );
      },
      child: Container(
        height: 177,
        width: 148,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffEBF8EE),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.favorite_border,
              ),
            ),
            Image.asset(
              vegitable.image,
              height: 90,
              width: 90,
            ),
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primaryColor.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    vegitable.name,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  CustomText(
                    '\$ ${vegitable.price.toString()}',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

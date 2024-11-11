import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/models/vegitable.dart';
import 'package:proapp/screens/cart/cart.dart';
import 'package:proapp/screens/product_details/widget/counter_section.dart';
import 'package:proapp/screens/product_details/widget/related_product.dart';
import 'package:proapp/utils/util_functions.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    super.key,
    required this.vegitable,
  });

  final Vegitable vegitable;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                height: 280,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffe5e5e5),
                ),
                child: Image.asset(
                  widget.vegitable.image,
                  width: 188,
                  height: 188,
                ),
              ),
              Positioned(
                top: 256,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(29, 34, 29, 0),
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            widget.vegitable.name,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                            child: const CounterSection(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      CustomText(
                        "Rs ${widget.vegitable.price}",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      CustomText(
                        widget.vegitable.desc,
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      const CustomText(
                        "Related Items",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      RelatedProduct(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onTap: () {
                        UtilFunctions.navigateTo(context, const Cart());
                      },
                      text: "Add to Cart",
                    ),
                    const SizedBox(height: 75),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

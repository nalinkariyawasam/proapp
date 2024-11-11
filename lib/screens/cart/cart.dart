import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_button.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/models/cart_item_model.dart';
import 'package:proapp/screens/cart/success.dart';
import 'package:proapp/screens/cart/widgets/cart_item.dart';
import 'package:proapp/utils/util_functions.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItemModel> cartItems = [
    CartItemModel(
        id: 1, name: "Grapes", price: 1.56, quantity: 2, totalValue: 3.12),
    CartItemModel(
        id: 2, name: "Grapes", price: 1.56, quantity: 2, totalValue: 3.12),
    CartItemModel(
        id: 3, name: "Grapes", price: 1.56, quantity: 2, totalValue: 3.12),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    "Cart",
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) =>
                      CartItem(cartItemModel: cartItems[index]),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 50,
            left: 50,
          ),
          child: Column(
            children: [
              const CartAmountRow(
                text: 'Item Total',
                price: "Rs 49.00",
              ),
              const SizedBox(height: 10),
              const CartAmountRow(
                text: 'Discount',
                price: "Rs -10.00",
              ),
              const SizedBox(height: 10),
              const CartAmountRow(
                text: 'Tax',
                price: "Rs 00.00",
              ),
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    "Total",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    "Rs 39.00",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  UtilFunctions.navigateTo(context, const Success());
                },
                text: "Place Order",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartAmountRow extends StatelessWidget {
  const CartAmountRow({
    super.key,
    required this.text,
    required this.price,
  });
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        CustomText(
          price,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}

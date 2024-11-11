import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/componetns/image_tile.dart';
import 'package:proapp/models/cart_item_model.dart';

class CartItem extends StatelessWidget {
  CartItem({
    required this.cartItemModel,
    super.key,
  });
  CartItemModel cartItemModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ImageTile(
            height: 70,
            width: 70,
            imgUrl: "assets/images/111.png",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                cartItemModel.name,
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.remove,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomText(
                      cartItemModel.quantity.toString(),
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.add,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.close,
                color: Colors.red,
              ),
              CustomText(
                cartItemModel.totalValue.toString(),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

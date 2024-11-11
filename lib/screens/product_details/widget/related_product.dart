import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/models/vegitable.dart';

class RelatedProduct extends StatelessWidget {
  RelatedProduct({
    super.key,
  });

  final List<Vegitable> vegitable = [
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
    Vegitable(
        id: 1, name: "Tomato", price: 1.50, image: 'assets/images/11.png'),
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 83,
          height: 83,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffEBF8EB),
            image: DecorationImage(
              image: AssetImage(
                vegitable[index].image,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withOpacity(0.7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      vegitable[index].name,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      "Rs ${vegitable[index].price}",
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 21,
        ),
        itemCount: vegitable.length,
      ),
    );
  }
}

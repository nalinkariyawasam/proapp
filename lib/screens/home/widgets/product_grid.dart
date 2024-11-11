import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proapp/models/vegitable.dart';
import 'package:proapp/screens/home/widgets/product_tile.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({
    super.key,
  });

  final List<Vegitable> vegitable = [
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/11.png'),
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
    Vegitable(id: 1, name: "Tomato", price: 1.50, image: 'assets/images/1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 44,
        ),
        itemCount: vegitable.length,
        itemBuilder: (context, index) => ProductTile(
          vegitable: vegitable[index],
        ),
      ),
    );
  }
}

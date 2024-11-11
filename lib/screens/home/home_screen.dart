import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proapp/componetns/custom_text.dart';
import 'package:proapp/controllers/auth_controller.dart';
import 'package:proapp/screens/home/widgets/product_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          AuthController.signOut();
                        },
                        icon: const Icon(
                          Icons.logout,
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.cart,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomText(
                "Vegitables",
                fontSize: 25,
              ),
              const SizedBox(
                height: 42,
              ),
              ProductGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

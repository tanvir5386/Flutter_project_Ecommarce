import 'package:ecommerce_tan/common/appBar.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppbar(
        title: "Mega Shop",
        left: const Icon(Icons.notifications),
        right: const Icon(Icons.shopping_cart),
      ),
      body: Center(
        child: Text(
          "Welcome to Mega Shop!",
          style: TextStyle(fontSize: 24, color: FColors.oceanBlue),
        ),
      ),
    );
  }
}

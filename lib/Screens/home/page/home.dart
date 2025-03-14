import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mega Shop",
          style: TextStyle(
            fontFamily: "DMSans",
            fontWeight: FontWeight.bold,
            color: FColors.oceanBlue,
          ),
        ), //Tanvir
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.shopping_cart),
          ),
        ], //5386
      ),
    );
  }
}

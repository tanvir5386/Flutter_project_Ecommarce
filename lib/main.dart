import 'package:flutter/material.dart';
import 'package:ecommerce_tan/Screens/home/page/home.dart';

void main() {
  runApp(const FreebiesEcom());
}

class FreebiesEcom extends StatelessWidget {
  const FreebiesEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freebies Ecom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

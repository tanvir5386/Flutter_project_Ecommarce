import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cartItems = [];

  void addToCart(String product) {
    setState(() => cartItems.add(product));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Added $product to cart")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mega Mall"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              if (cartItems.isNotEmpty)
                Positioned(
                  right: 6,
                  top: 6,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      cartItems.length.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Product",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 16),
            Text("Featured Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  List<Map<String, String>> products = [
                    {"name": "TMA-2 HD Wireless", "image": "headphones.png"},
                    {"name": "TMA-2 HD Earphones", "image": "earphones.png"}
                  ];
                  var product = products[index];

                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/${product["image"]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product["name"]!,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Rp. 1.500.000",
                                  style: TextStyle(color: Colors.red)),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 16),
                                  Text(" 4.6 (86 Reviews)")
                                ],
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => addToCart(product["name"]!),
                                child: Text("Add to Cart"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

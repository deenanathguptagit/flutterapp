import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/components/product_tile.dart';
import 'package:flutterapp/model/Cart.dart';
import '../model/Product.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Search", style: TextStyle(color: Colors.grey)),
                Icon(CupertinoIcons.search, color: Colors.grey),
              ],
            ),
          ),
          //Message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text("Make a customer, not a sale"),
          ),

          //Hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text('View all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: SizedBox(
              height: 150, // Adjust based on your product tile height
              child: ListView.builder(
                itemCount: value.getProducts().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Product product = value.getProducts()[index];
                  return ShowTile(product: product);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

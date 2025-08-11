import 'package:flutter/cupertino.dart';
import 'package:flutterapp/model/Product.dart';

class Cart extends ChangeNotifier {
  List<Product> products = [
    Product(
      pName: "Nike Shoes",
      pPrice: "200",
      imagePath: "lib/images/nike_shoe.jpg",
      pDescription: "Lightweight running shoes with modern style and comfort.",
    ),
    Product(
      pName: "Action Shoes",
      pPrice: "200",
      imagePath: "lib/images/shoe.jpg",
      pDescription: "Durable sneakers built for daily wear and sporty use.",
    ),
    Product(
      pName: "Goggles",
      pPrice: "1000",
      imagePath: "lib/images/goggles.jpg",
      pDescription: "UV-protected stylish goggles perfect for sunny days.",
    ),
    Product(
      pName: "iWatch",
      pPrice: "100",
      imagePath: "lib/images/iwatch.jpg",
      pDescription: "Smartwatch with fitness tracking and message alerts.",
    ),
    Product(
      pName: "Camera",
      pPrice: "500",
      imagePath: "lib/images/camera.jpg",
      pDescription: "Compact DSLR for crisp photos and stunning videos.",
    ),
    Product(
      pName: "Headphone",
      pPrice: "200",
      imagePath: "lib/images/headphone.jpg",
      pDescription: "Noise-cancelling headphones with deep bass and clarity.",
    ),
  ];

  List<Product> getProducts() {
    return products;
  }

  List<Product> cart = [];

  List<Product> getCartProduct() {
    return cart;
  }

  void addToCart(Product product) {
    if (!cart.contains(product)) {
      cart.add(product);
      notifyListeners();
    }
  }

  void removeProductFromCart(Product product) {
    cart.remove(product);
    notifyListeners();
  }
}

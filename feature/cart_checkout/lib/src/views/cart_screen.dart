import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = context.watch<CartController>();
    final cartItems = cartController.cartItems;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            title: Text(item.product.name),
            subtitle: Text('\$${item.product.price} x ${item.quantity}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () => cartController.removeFromCart(item),
            ),
          );
        },
      ),
    );
  }
}

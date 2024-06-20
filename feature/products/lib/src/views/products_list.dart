import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/products_controller.dart';
import '../flow/products_flow_state.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsController>().fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductsController>().products;

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price}'),
            onTap: () {
              context.flow<ProductsFlowState>().update(
                    (state) => state.copyWith(selectedProduct: product),
              );
            },
          );
        },
      ),
    );
  }
}

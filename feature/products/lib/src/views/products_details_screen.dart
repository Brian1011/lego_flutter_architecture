import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:products/products.dart';

import '../flow/products_flow_state.dart';

class ProductsDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductsDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductsDetailsScreenState createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Price: \$${widget.product.price}'),
            const SizedBox(height: 16),
            Text(widget.product.name),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.flow<ProductsFlowState>().update(
                      (state) => state.copyWith(showComments: true),
                );
              },
              child: const Text('Show Comments'),
            )
          ],
        ),
      ),
    );
  }
}

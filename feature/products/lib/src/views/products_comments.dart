import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsComments extends StatefulWidget {
  final Product product;
  const ProductsComments({Key? key, required this.product}) : super(key: key);

  @override
  _ProductsCommentsState createState() => _ProductsCommentsState();
}

class _ProductsCommentsState extends State<ProductsComments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Comment $index'),
            subtitle: Text('This is a comment'),
          );
        },
      ),
    );
  }
}

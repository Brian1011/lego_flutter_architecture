import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:products/src/flow/products_flow_state.dart';
import 'package:products/src/views/products_comments.dart';
import 'package:products/src/views/products_details_screen.dart';
import 'package:provider/provider.dart';

import '../../products.dart';
import '../views/products_list.dart';

class ProductsFlow extends StatelessWidget {
  const ProductsFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<ProductsFlowState>(
      state: ProductsFlowState(
        products: context.read<ProductsController>().products,
      ),
      onGeneratePages: (state, pages) {
        return [
          const MaterialPage(child: ProductsList()),
          if (state.selectedProduct != null)
            MaterialPage(child: ProductsDetailsScreen(product: state.selectedProduct!)),
          if (state.showComments)
            MaterialPage(child: ProductsComments(product: state.selectedProduct!)),
        ];
      },
    );
  }
}
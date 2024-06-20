import 'package:freezed_annotation/freezed_annotation.dart';

import '../../products.dart';
part 'products_flow_state.freezed.dart';

@freezed
class ProductsFlowState with _$ProductsFlowState {
  const factory ProductsFlowState({
    @Default([]) List<Product> products,
    Product? selectedProduct,
    @Default(false) bool showComments,
  }) = _ProductsFlowState;
}



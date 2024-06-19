import 'package:flutter/foundation.dart';

import '../models/product.dart';
import '../services/products_service.dart';

class ProductsController with ChangeNotifier {
  final ProductsService _productsService = ProductsService();
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    _products = await _productsService.fetchProducts();
    notifyListeners();
  }
}

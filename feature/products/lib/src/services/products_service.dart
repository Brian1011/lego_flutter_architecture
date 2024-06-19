import '../models/product.dart';

class ProductsService {
  Future<List<Product>> fetchProducts() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));
    final data = [
      {'id': '1', 'name': 'Product 1', 'price': 9.99},
      {'id': '2', 'name': 'Product 2', 'price': 14.99},
      {'id': '3', 'name': 'Product 3', 'price': 19.99},
    ];
    return data.map<Product>((json) {
      return Product(
        id: json['id'] as String,
        name: json['name'] as String,
        price: json['price'] as double,
      );
    }).toList();
  }
}

import 'package:auth/auth.dart';
import 'package:cart_checkout/cart_checkout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:products/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthController()),
        ChangeNotifierProvider(create: (_) => ProductsController()),
        ChangeNotifierProvider(create: (_) => CartController()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductsFlow(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartScreen(),
    ),
  ],
);

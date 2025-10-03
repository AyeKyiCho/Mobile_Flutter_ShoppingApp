import 'package:flutter/material.dart';
import 'models/product.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Product> _cart = [];

  // Add item to the cart
  void _addToCart(Product product) {
    setState(() {
      _cart.add(product);
    });
  }

  // Remove item from the cart
  void _removeFromCart(Product product) {
    setState(() {
      _cart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomeScreen(
        cart: _cart,
        addToCart: _addToCart,
        removeFromCart: _removeFromCart, // Pass removeFromCart function
      ),
    );
  }
}

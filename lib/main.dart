import 'package:flutter/material.dart';
import 'package:shop_app/views/category_view.dart';
import 'package:shop_app/views/home_view.dart';

void main() async {
  runApp(const ShopApp());
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeViews.id: (context) => const HomeViews(),
        CategoryView.id: (context) => const CategoryView()
      },
      initialRoute: HomeViews.id,
    );
  }
}

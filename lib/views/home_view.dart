import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/services/post_product_service.dart';
import 'package:shop_app/widgets/categories_show.dart';
import 'package:shop_app/widgets/all_product_show.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});
  static String id = 'hone view';

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Trends'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.add),
        onPressed: addProduct,
        iconSize: 32,
      ),
      body: selectedIndex == 0 ? AllProductShow() : CategoriesShow(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_align_justify),
            label: ('All products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: ('Categories'),
          ),
        ],
      ),
    );
  }

  void addProduct() async {
    ProductModel product = await PostProduct().postProduct(
        title: 'title',
        price: 10.5,
        description: 'description',
        image: 'image',
        category: 'jewelery');
    log(product.toString());
  }
}

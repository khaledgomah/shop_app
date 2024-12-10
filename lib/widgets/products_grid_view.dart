import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.scroll,
     required this.productList,
  });


  final ScrollController scroll;
  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: GridView.builder(
        controller: scroll,
        clipBehavior: Clip.none,
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 100,
            childAspectRatio: 1.7),
        itemBuilder: (context, index) => ProductCard(product: productList[index]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Card(
        shadowColor: Colors.grey,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(r'$' '${product.price}'),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
                ],
              )
            ],
          ),
        ),
      ),
      Positioned(
        right: 20,
        top: -80,
        child: Image.network(
          height: 100,
          width: 100,
          product.image,
          alignment: Alignment.topLeft,
        ),
      ),
    ]);
  }
}

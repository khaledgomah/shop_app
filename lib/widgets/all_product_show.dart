import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/services/get_all_products_service.dart';
import 'package:shop_app/widgets/products_grid_view.dart';

class AllProductShow extends StatelessWidget {
  AllProductShow({
    super.key,
  });
  final Future<List<ProductModel>> productList =
      GetAllProductsService().getAllProduct();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: FutureBuilder(
        future: productList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final ScrollController scroll = ScrollController();
            return Scrollbar(
              radius: const Radius.circular(10),
              thickness: 8,
              interactive: true,
              controller: scroll,
              thumbVisibility: true,
              child: ProductsGridView(
                scroll: scroll,
                productList: snapshot.data!,
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

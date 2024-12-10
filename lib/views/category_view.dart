import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/services/get_category.dart';
import 'package:shop_app/widgets/products_grid_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
  });
  static String id = 'categoryView';

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.settingsOf(context)!.arguments.toString();
    final Future<List<ProductModel>> productList =
        GetCategoryService().getCategory(category);

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: productList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ProductsGridView(
              scroll: ScrollController(),
              productList: snapshot.data!,
            );
          }
          if (snapshot.hasError) {
            return const CircularProgressIndicator();
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

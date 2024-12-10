import 'package:flutter/material.dart';
import 'package:shop_app/services/get_all_categories_service.dart';
import 'package:shop_app/views/category_view.dart';
import 'package:shop_app/widgets/category_card.dart';

class CategoriesShow extends StatelessWidget {
  CategoriesShow({super.key});

  final Future<List<dynamic>> categoriesList =
      GetAllCategoriesService().getAllCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: categoriesList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => CategoryCard(
                text: snapshot.data![index],
                onTap: () {
                  Navigator.of(context).pushNamed(CategoryView.id,arguments: snapshot.data![index]);
                },
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

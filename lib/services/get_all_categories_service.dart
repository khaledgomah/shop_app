import 'package:dio/dio.dart';
import 'package:shop_app/helper/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    String url = 'https://fakestoreapi.com/products/categories';
    List<dynamic> categoriesList = [];
    Response response = await Api().get(url);
    for (var element in response.data) {
      categoriesList.add(element);
    }
    return categoriesList;
  }
}

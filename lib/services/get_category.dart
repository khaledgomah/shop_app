import 'package:dio/dio.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategory(String category) async {
    String url = 'https://fakestoreapi.com/products/category/$category';
    List<ProductModel> productList = [];
    Response response = await Api().get(url);
    for (var element in response.data) {
      productList.add(ProductModel.fromJson(element));
    }
    return productList;
  }
}

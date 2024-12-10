import 'package:dio/dio.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/product_model.dart';

class GetAllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    String url = 'https://fakestoreapi.com/products';
    List<ProductModel> productList = [];
    Response response = await Api().get(url);
    for (var element in response.data) {
      productList.add(ProductModel.fromJson(element));
    }
    return productList;
  }
}

import 'package:dio/dio.dart';
import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/product_model.dart';

class PostProduct {
  Future<ProductModel> postProduct(
      {required String title,
      required double price,
      required String description,
      required String image,
      required String category}) async {
    const String url = 'https://fakestoreapi.com/products';

    Map<String, dynamic> data = {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    };
    Response response = await Api().post(url: url, data: data);
    return ProductModel.fromJson(response.data);
  }
}

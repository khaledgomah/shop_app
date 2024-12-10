import 'package:dio/dio.dart';

class Api {
  Future<Response> get(String url) async {
    final dio = Dio();
    final Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<Response> post({url,data}) async {
    final dio = Dio();
    Response response = await dio.post(url,data:data );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  
}

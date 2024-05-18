import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiManager {
  late Dio dio;
  ApiManager() {
    dio = Dio();
  }
  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? queryParam, Map<String, dynamic>? headers}) {
    return dio.get(Constants.baseUrl + endPoint,
        queryParameters: queryParam,
        options: Options(
          headers: headers,
        ));
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.post(Constants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
        ));
  }

  Future<Response> deleteData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.delete(Constants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
        ));
  }
}

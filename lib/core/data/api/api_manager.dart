import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/utils/constants.dart';

class ApiManager{
  late Dio dio;
  ApiManager(){
    dio = Dio();
  }
  Future<Response> getData(String endPoint,{Map<String, dynamic>? queryParam} ){
    return dio.get(Constants.baseUrl + endPoint , queryParameters: queryParam );
  }
  Future<Response> postData(String endPoint, {Map<String, dynamic>? body}){
    return dio.post(Constants.baseUrl + endPoint, data: body);
  }
}
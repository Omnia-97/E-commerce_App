import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/sign_in/data/data_sources/remote/signin_remote_ds.dart';
import 'package:e_commerce_app/features/sign_in/data/models/UserModel.dart';

class SignInRemoteDSImpl implements SignInRemoteDS{
  @override
  Future<UserModel> signIn(String email, String password) async{
    Map<String, dynamic> body = {
      "email":email,
      "password":password,
    };
    ApiManager apiManager = ApiManager();
    Response response = await apiManager.postData(EndPoints.signIn, body:body);
    UserModel userModel = UserModel.fromJson(response.data);
    return userModel;

  }
  
}
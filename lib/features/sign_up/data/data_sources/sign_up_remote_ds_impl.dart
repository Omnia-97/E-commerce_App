import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/sign_up/data/data_sources/sign_up_remote_ds.dart';

import '../../domain/entities/SignUpRequestModel.dart';
import '../models/SignUpModel.dart';

class SignUpDsImpl implements SignUpRemoteDS {
  @override
  Future<SignUpModel> signUp(SignUpRequestModel requestModel) async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.postData(EndPoints.signUp,
        body: requestModel.toJson());
    SignUpModel signUpModel = SignUpModel.fromJson(response.data);
    return signUpModel;
  }
}

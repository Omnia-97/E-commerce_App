import '../../domain/entities/SignUpRequestModel.dart';
import '../models/SignUpModel.dart';

abstract class SignUpRemoteDS {
  Future<SignUpModel> signUp(SignUpRequestModel requestModel);
}

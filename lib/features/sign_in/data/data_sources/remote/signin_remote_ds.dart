import 'package:e_commerce_app/features/sign_in/data/models/UserModel.dart';

abstract class SignInRemoteDS {
  Future<UserModel> signIn(String email, String password);
}

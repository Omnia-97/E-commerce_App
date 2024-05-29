import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/data/models/wish_list_model.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToWishListUseCase {
  HomeRepo homeRepo;
  AddProductToWishListUseCase(this.homeRepo);
  Future<Either<Failures, WishListModel>> call(String productId) async {
    var result = await homeRepo.addProductToWishList(productId);
    return result;
  }
}

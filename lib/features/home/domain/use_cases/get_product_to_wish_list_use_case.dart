import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/data/models/get_wish_list_model.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductToWishListUseCase {
  HomeRepo homeRepo;
  GetProductToWishListUseCase(this.homeRepo);
  Future<Either<Failures, GetWishListModel>> call() async {
    var result = await homeRepo.getProductToWishList();
    return result;
  }
}

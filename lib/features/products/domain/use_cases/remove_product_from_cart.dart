import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/products/domain/repositories/all_products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveProductFromCartUseCase {
  AllProductsRepo allProductsRepo;
  RemoveProductFromCartUseCase(this.allProductsRepo);
  Future<Either<String, Failures>> call() async {
    var result = await allProductsRepo.removeProductFromCart();
    return result;
  }
}

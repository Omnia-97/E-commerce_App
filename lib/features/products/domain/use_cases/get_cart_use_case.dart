import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/products/domain/repositories/all_products_repo.dart';
import 'package:e_commerce_app/features/products/data/models/get_cart_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductToCartUseCase {
  AllProductsRepo allProductsRepo;
  GetProductToCartUseCase(this.allProductsRepo);
  Future<Either<Failures, GetCartModel>> call() async {
    var result = await allProductsRepo.getProductToCart();
    return result;
  }
}

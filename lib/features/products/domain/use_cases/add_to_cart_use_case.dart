import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/products/data/models/add_product_to_cart_model.dart';
import 'package:e_commerce_app/features/products/domain/repositories/all_products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToCartUseCase {
  AllProductsRepo allProductsRepo;
  AddProductToCartUseCase(this.allProductsRepo);
  Future<Either<Failures, AddProductToCartModel>> call(String productId) async {
    var result = await allProductsRepo.addProductToCart(productId);
    return result;
  }
}

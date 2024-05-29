import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/products/domain/repositories/all_products_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/errors/failures.dart';
import '../../data/models/all_products_model.dart';
@injectable
class AllProductsUseCase {
  AllProductsRepo allProductsRepo;
  AllProductsUseCase(this.allProductsRepo);
  Future<Either<Failures, AllProductsModel>> call(String id) async {
    var result = await allProductsRepo.getAllProducts(id);
    return result;
  }
}

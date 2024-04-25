import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/products/data/data_sources/all_products_remote_ds.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:e_commerce_app/features/products/domain/repositories/all_products_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AllProductsRepo)
class AllProductsRepoImpl implements AllProductsRepo {
  AllProductsDS allProductsDS;
  AllProductsRepoImpl(this.allProductsDS);
  @override
  Future<Either<Failures, AllProductsModel>> getAllProducts() async {
    try {
      var result = await allProductsDS.getAllProducts();
      return Right(result);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}

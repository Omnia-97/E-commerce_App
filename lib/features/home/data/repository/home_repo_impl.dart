import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/data/data_sources/home_remote_ds.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: HomeRepo)
class HomeRepoImplement implements HomeRepo {
  HomeRemoteDS homeRemoteDS;
  HomeRepoImplement(this.homeRemoteDS);
  @override
  Future<Either<Failures, BrandsModel>> getBrands() async {
    try {
      var result = await homeRemoteDS.getBrands();
      return Right(result);
    } catch (e) {
      return Future.value(Left(RemoteFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failures, CategoriesModel>> getCategories() async {
    try {
      var result = await homeRemoteDS.getCategories();
      return Right(result);
    } catch (e) {
      return Future.value(Left(RemoteFailure(e.toString())));
    }
  }
  @override
  Future<Either<Failures, CategoriesOnCategoryModel>> getCategoriesOnCategory(
      String id) async {
    try {
      var result = await homeRemoteDS.getCategoriesOnCategory(id);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}

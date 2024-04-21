import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/Categories/data/data_sources/categories_tab_remote_ds.dart';
import 'package:e_commerce_app/features/Categories/data/models/sub_categories_model.dart';
import 'package:e_commerce_app/features/Categories/domain/repositories/categories_tab_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesTabRepo)
class CategoriesTabImplement implements CategoriesTabRepo {
  CategoriesTabRemoteDS categoriesTabRemoteDS;
  CategoriesTabImplement({required this.categoriesTabRemoteDS});
  @override
  Future<Either<Failures, SubCategoriesModel>> getSubCategories(String id) async {
    var result = await categoriesTabRemoteDS.getSubCategories(id);
    try {
      return Right(result);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/categories_model.dart';
@injectable
class GetCategoriesUseCase {
  HomeRepo homeRepo;
  GetCategoriesUseCase(this.homeRepo);
  Future<Either<Failures, CategoriesModel>> call() async {
    var result = await homeRepo.getCategories();
    return result;
  }
}

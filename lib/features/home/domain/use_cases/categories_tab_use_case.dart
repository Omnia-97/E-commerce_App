import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/errors/failures.dart';
import '../../data/models/categories_on_category_model.dart';

@injectable
class CategoriesTabUseCase {
  final HomeRepo homeRepo;
  CategoriesTabUseCase({required this.homeRepo});
  Future<Either<Failures, CategoriesOnCategoryModel>> call(String id) async {
    return await homeRepo.getCategoriesOnCategory(id);
  }
}
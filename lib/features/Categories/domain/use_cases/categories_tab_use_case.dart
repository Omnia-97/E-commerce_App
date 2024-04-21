import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/errors/failures.dart';
import '../../data/models/sub_categories_model.dart';
import '../repositories/categories_tab_repo.dart';
@injectable
class CategoriesTabUseCase {
  final CategoriesTabRepo categoriesTabRepo;
  CategoriesTabUseCase({required this.categoriesTabRepo});
  Future<Either<Failures, SubCategoriesModel>> call(String id) async {
    return await categoriesTabRepo.getSubCategories(id);
  }
}
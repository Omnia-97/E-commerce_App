import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/Categories/data/models/sub_categories_model.dart';

abstract class CategoriesTabRepo {
Future<Either<Failures, SubCategoriesModel>> getSubCategories(String id);
}
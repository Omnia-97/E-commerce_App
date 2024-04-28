import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';

abstract class HomeRepo {
  Future<Either<Failures,CategoriesModel>> getCategories();
  Future<Either<Failures, BrandsModel>> getBrands();
  Future<Either<Failures, CategoriesOnCategoryModel>> getCategoriesOnCategory(String id);
}
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/data/models/get_wish_list_model.dart';
import 'package:e_commerce_app/features/home/data/models/wish_list_model.dart';

abstract class HomeRepo {
  Future<Either<Failures,CategoriesModel>> getCategories();
  Future<Either<Failures, BrandsModel>> getBrands();
  Future<Either<Failures, CategoriesOnCategoryModel>> getCategoriesOnCategory(String id);
  Future<Either<Failures, WishListModel>> addProductToWishList(String productId);
  Future<Either<Failures, GetWishListModel>> getProductToWishList();
  Future<Either<Failures, GetWishListModel>> removeProductFromWishList(String productId);
}
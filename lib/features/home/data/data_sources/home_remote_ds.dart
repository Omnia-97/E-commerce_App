import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/data/models/get_wish_list_model.dart';
import 'package:e_commerce_app/features/home/data/models/wish_list_model.dart';

import '../models/brands_model.dart';
import '../models/categories_model.dart';

abstract class HomeRemoteDS {
  Future<CategoriesModel> getCategories();
  Future<BrandsModel> getBrands();
  Future<CategoriesOnCategoryModel> getCategoriesOnCategory(String id);
  Future<WishListModel> getAddProductToWishList(String productId);
  Future<GetWishListModel> getProductToWishList();
}

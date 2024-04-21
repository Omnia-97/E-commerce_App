import '../models/brands_model.dart';
import '../models/categories_model.dart';

abstract class HomeRemoteDS {
  Future<CategoriesModel> getCategories();
  Future<BrandsModel> getBrands();
}

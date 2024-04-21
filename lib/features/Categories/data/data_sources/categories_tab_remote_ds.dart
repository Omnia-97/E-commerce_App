import '../models/sub_categories_model.dart';

abstract class CategoriesTabRemoteDS {
  Future<SubCategoriesModel> getSubCategories(String id);
}

import '../models/all_products_model.dart';

abstract class AllProductsDS{
  Future<AllProductsModel> getAllProducts();
}
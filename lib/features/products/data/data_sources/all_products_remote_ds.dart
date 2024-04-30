import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/products/data/models/add_product_to_cart_model.dart';
import 'package:e_commerce_app/features/products/data/models/get_cart_model.dart';
import '../models/all_products_model.dart';

abstract class AllProductsDS {
  Future<AllProductsModel> getAllProducts(String id);
  Future<AddProductToCartModel> addProductToCart(String productId);
  Future<GetCartModel> getProductToCart();
  Future<Either<String, Failures>> removeProductFromCart();
}

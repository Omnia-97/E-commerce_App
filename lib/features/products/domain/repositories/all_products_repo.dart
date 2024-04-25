import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';

import '../../data/models/all_products_model.dart';

abstract class AllProductsRepo {
  Future<Either<Failures, AllProductsModel>> getAllProducts();
}

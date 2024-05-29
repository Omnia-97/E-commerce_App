import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/errors/failures.dart';
import '../../data/models/brands_model.dart';
@injectable
class GetBrandsUseCase {
  HomeRepo homeRepo;
  GetBrandsUseCase(this.homeRepo);
  Future<Either<Failures, BrandsModel>> call() async {
    var result = await homeRepo.getBrands();
    return result;
  }
}

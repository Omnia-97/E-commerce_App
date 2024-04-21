import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/home/data/data_sources/home_remote_ds.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: HomeRemoteDS)
class HomeRemoteDSImplement implements HomeRemoteDS {
  ApiManager apiManager = ApiManager();
  HomeRemoteDSImplement(this.apiManager);
  @override
  Future<BrandsModel> getBrands() async {
    Response<dynamic> response = await apiManager.getData(
      EndPoints.brands,
    );
    BrandsModel brandsModel = BrandsModel.fromJson(response.data);
    return brandsModel;
  }

  @override
  Future<CategoriesModel> getCategories() async {
    Response<dynamic> response = await apiManager.getData(
      EndPoints.categories,
    );
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }
}

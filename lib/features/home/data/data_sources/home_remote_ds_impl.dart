import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/caches/shared_preference.dart';
import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/home/data/data_sources/home_remote_ds.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/data/models/get_wish_list_model.dart';
import 'package:e_commerce_app/features/home/data/models/wish_list_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRemoteDS)
class HomeRemoteDSImplement implements HomeRemoteDS {
  ApiManager apiManager = ApiManager();
  HomeRemoteDSImplement(this.apiManager);
  var token = CacheHelper.getToken("token");
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

  @override
  Future<CategoriesOnCategoryModel> getCategoriesOnCategory(String id) async {
    var response = await apiManager.getData(
      EndPoints.categoriesOnCategory(id),
    );
    CategoriesOnCategoryModel categoriesOnCategoryModel =
        CategoriesOnCategoryModel.fromJson(response.data);
    return categoriesOnCategoryModel;
  }

  @override
  Future<WishListModel> getAddProductToWishList(String productId) async {
    var response =
        await apiManager.postData(EndPoints.addProductToWishList, body: {
      "productId": productId,
    }, headers: {
      "token": token,
    });
    WishListModel wishListModel = WishListModel.fromJson(response.data);
    return wishListModel;
  }

  @override
  Future<GetWishListModel> getProductToWishList() async {
    var response =
        await apiManager.getData(EndPoints.addProductToWishList, headers: {
      "token": token,
    });
    GetWishListModel getWishListModel =
        GetWishListModel.fromJson(response.data);
    return getWishListModel;
  }

  @override
  Future<GetWishListModel> removeProductFromWishList(
      String productId) async {
    var response = await apiManager
        .deleteData(EndPoints.removeProductFromWishList(productId), headers: {
      "token": token,
    });
   GetWishListModel getWishListModel = GetWishListModel.fromJson(response.data);
   return getWishListModel;
  }
}

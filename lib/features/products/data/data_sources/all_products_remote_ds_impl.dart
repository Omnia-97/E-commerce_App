import 'package:e_commerce_app/core/caches/shared_preference.dart';
import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/products/data/data_sources/all_products_remote_ds.dart';
import 'package:e_commerce_app/features/products/data/models/add_product_to_cart_model.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:e_commerce_app/features/products/data/models/get_cart_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AllProductsDS)
class AllProductsDsImpl implements AllProductsDS {
  ApiManager apiManager = ApiManager();
  @override
  Future<AllProductsModel> getAllProducts() async {
    var response = await apiManager.getData(EndPoints.allProducts);
    AllProductsModel allProductsModel =
        AllProductsModel.fromJson(response.data);
    return allProductsModel;
  }

  @override
  Future<AddProductToCartModel> addProductToCart(String productId) async {
    var token = CacheHelper.getToken("token");
    var response = await apiManager.postData(EndPoints.addToCart, body: {
      "productId": productId,
    }, headers: {
      "token": token,
    });
    AddProductToCartModel addProductToCartModel =
        AddProductToCartModel.fromJson(response.data);
    return addProductToCartModel;
  }

  @override
  Future<GetCartModel> getProductToCart() async {
    var token = CacheHelper.getToken("token");
    var response = await apiManager.getData(EndPoints.addToCart, headers: {
      "token": token,
    });
    GetCartModel getCartModel =
        GetCartModel.fromJson(response.data);
    return getCartModel;
  }
}

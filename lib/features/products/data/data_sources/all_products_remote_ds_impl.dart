import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/products/data/data_sources/all_products_remote_ds.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: AllProductsDS)
class AllProductsDsImpl implements AllProductsDS{
  ApiManager apiManager = ApiManager();
  @override
  Future<AllProductsModel> getAllProducts() async{
    var response = await apiManager.getData(EndPoints.allProducts);
    AllProductsModel allProductsModel = AllProductsModel.fromJson(response.data);
    return allProductsModel;
  }

}
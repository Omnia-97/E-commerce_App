import 'package:e_commerce_app/core/data/api/api_manager.dart';
import 'package:e_commerce_app/core/data/api/end_points.dart';
import 'package:e_commerce_app/features/Categories/data/data_sources/categories_tab_remote_ds.dart';
import 'package:e_commerce_app/features/Categories/data/models/sub_categories_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoriesTabRemoteDS)
class CategoriesTabRemoteDsImpl implements CategoriesTabRemoteDS{
  ApiManager apiManager = ApiManager();
  @override
  Future<SubCategoriesModel> getSubCategories(String id) async{
    var response = await apiManager.getData(EndPoints.subCategories);
    SubCategoriesModel subCategoriesModel = SubCategoriesModel.fromJson(response.data);
    return subCategoriesModel;
   
  }
}
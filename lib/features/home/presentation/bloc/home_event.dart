part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getCategories() = GetCategoriesEvent;
  const factory HomeEvent.getBrands() = GetBrandsEvent;
  const factory HomeEvent.changeBottomNavBar(int index) = changeBottomNavBarEvent;
  const factory HomeEvent.getSubCategories(String id) = GetSubCategoriesEvent;
  const factory HomeEvent.changeCategoryIndex(int index) = ChangeCategoryIndexEvent;
  const factory HomeEvent.addProductToWishList(String productId) = AddProductToWishListEvent;
  const factory HomeEvent.getProductToWishList() = GetProductToWishListEvent;
}

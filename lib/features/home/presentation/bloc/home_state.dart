part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
    @Default(RequestStatus.init) RequestStatus getBrandsStatus,
    @Default(RequestStatus.init) RequestStatus? getCategoriesTabStatus,
    @Default(RequestStatus.init) RequestStatus? addProductToWishlistStatus,
    @Default(RequestStatus.init) RequestStatus? getProductToWishlistStatus,
    @Default(RequestStatus.init) RequestStatus? removeProductFromWishlistStatus,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentIndex,
    @Default(0) int wishListLength,
    CategoriesOnCategoryModel? subCategoriesModel,
    CategoriesModel? categoriesModel,
    BrandsModel? brandsModel,
    WishListModel? wishListModel,
    GetWishListModel? getWishListModel,
    Failures? categoriesFailure,
    Failures? brandsFailure,
    Failures? subCategoriesFailure,
    Failures? addProductToWishlistFailure,
    Failures? getProductToWishlistFailure,
    Failures? removeProductFromWishlistFailure,
  }) = _HomeState;
}

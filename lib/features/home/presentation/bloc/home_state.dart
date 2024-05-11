part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
    @Default(RequestStatus.init) RequestStatus getBrandsStatus,
    @Default(RequestStatus.init) RequestStatus? getCategoriesTabStatus,
    @Default(RequestStatus.init) RequestStatus? addProductToWishlistStatus,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentIndex,
    CategoriesOnCategoryModel? subCategoriesModel,
    CategoriesModel? categoriesModel,
    BrandsModel? brandsModel,
    WishListModel? wishListModel,
    Failures? categoriesFailure,
    Failures? brandsFailure,
    Failures? subCategoriesFailure,
    Failures? addProductToWishlistFailure,
  }) = _HomeState;
}

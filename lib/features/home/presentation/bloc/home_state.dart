part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
    @Default(RequestStatus.init) RequestStatus getBrandsStatus,
    @Default(RequestStatus.init) RequestStatus? getCategoriesTabStatus,
    @Default(0) int selectedCategoryIndex,
    @Default(0) int currentIndex,
    CategoriesOnCategoryModel? subCategoriesModel,
    CategoriesModel? categoriesModel,
    BrandsModel? brandsModel,
    Failures? categoriesFailure,
    Failures? brandsFailure,
    Failures? subCategoriesFailure,
  }) = _HomeState;
}

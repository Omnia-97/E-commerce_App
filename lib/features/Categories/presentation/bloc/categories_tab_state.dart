part of 'categories_tab_bloc.dart';

@freezed
class CategoriesTabState with _$CategoriesTabState {
  const factory CategoriesTabState({
    @Default(RequestStatus.init) RequestStatus? getCategoriesTabStatus,
    @Default(0) int selectedCategoryIndex,
    SubCategoriesModel? subCategoriesModel,
    Failures? subCategoriesFailure,
  }) = _CategoriesTabState;
}

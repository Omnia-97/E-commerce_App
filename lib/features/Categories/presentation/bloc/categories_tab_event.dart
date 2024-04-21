part of 'categories_tab_bloc.dart';

@freezed
class CategoriesTabEvent with _$CategoriesTabEvent {
  const factory CategoriesTabEvent.started() = _Started;
  const factory CategoriesTabEvent.getSubCategories(String id) = GetSubCategoriesEvent;
  const factory CategoriesTabEvent.changeCategoryIndex(int index) = ChangeCategoryIndexEvent;
}

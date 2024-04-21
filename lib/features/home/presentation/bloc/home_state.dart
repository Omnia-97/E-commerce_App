part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
    @Default(RequestStatus.init) RequestStatus getBrandsStatus,
    @Default(0) int currentIndex,
    CategoriesModel? categoriesModel,
    BrandsModel? brandsModel,
    Failures? categoriesFailure,
    Failures? brandsFailure,
  }) = _HomeState;
}

part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(RequestStatus.init) RequestStatus status,
   @Default(RequestStatus.init) RequestStatus getAllProductsStatus,
    AllProductsModel? allProductsModel,
    Failures? allProductsFailure,
}) = _ProductsState;
}

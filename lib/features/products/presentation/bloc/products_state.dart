part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(RequestStatus.init) RequestStatus status,
   @Default(RequestStatus.init) RequestStatus getAllProductsStatus,
   @Default(RequestStatus.init) RequestStatus addProductToCartStatus,
   @Default(RequestStatus.init) RequestStatus getProductToCartStatus,
   @Default(RequestStatus.init) RequestStatus removeProductFromCartStatus,
   @Default(0) int cartItemLength,
    AllProductsModel? allProductsModel,
    GetCartModel? getCartModel,
   String? message,
    Failures? removeProductFromCartFailure,
    Failures? allProductsFailure,
}) = _ProductsState;
}

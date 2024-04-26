part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.getAllProducts() = GetAllProductsEvent;
  const factory ProductsEvent.addProductToCart(String productId) = AddProductToCartEvent;
  const factory ProductsEvent.getProductToCart() = GetProductToCartEvent;
}

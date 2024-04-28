import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:e_commerce_app/features/products/data/models/get_cart_model.dart';
import 'package:e_commerce_app/features/products/domain/use_cases/add_to_cart_use_case.dart';
import 'package:e_commerce_app/features/products/domain/use_cases/get_cart_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/all_products_use_case.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';
@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  AllProductsUseCase allProductsUseCase;
  GetProductToCartUseCase getProductToCartUseCase;
  AddProductToCartUseCase addProductToCartUseCase;
   ProductsBloc(this.allProductsUseCase, this.addProductToCartUseCase,this.getProductToCartUseCase,) : super(const ProductsState()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(state.copyWith(getAllProductsStatus: RequestStatus.loading));
      var result = await allProductsUseCase(event.id);
      result.fold((l) {
        emit(state.copyWith(
            getAllProductsStatus: RequestStatus.failure,
            allProductsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getAllProductsStatus: RequestStatus.success, allProductsModel: r));
      });
    });
    on<AddProductToCartEvent>((event, emit) async {
      emit(state.copyWith(addProductToCartStatus: RequestStatus.loading));
      var result = await addProductToCartUseCase(event.productId);
      result.fold((l) {
        emit(state.copyWith(
            addProductToCartStatus: RequestStatus.failure,
           ));
      }, (r) {
        emit(state.copyWith(
            addProductToCartStatus: RequestStatus.success),);
      });

    });
    on<GetProductToCartEvent>((event, emit)  async{
      emit(state.copyWith(getProductToCartStatus: RequestStatus.loading, addProductToCartStatus: RequestStatus.init));
      var result = await getProductToCartUseCase();
      result.fold((l) {
        emit(state.copyWith(
          getProductToCartStatus: RequestStatus.failure,
        ));
      }, (r) {
        emit(state.copyWith(
            getProductToCartStatus: RequestStatus.success,cartItemLength: r.numOfCartItems ?? 0,getCartModel: r),);
      });

    });

  }
}

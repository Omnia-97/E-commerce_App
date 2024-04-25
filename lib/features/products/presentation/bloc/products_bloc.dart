import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/all_products_use_case.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';
@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  AllProductsUseCase allProductsUseCase;
   ProductsBloc(this.allProductsUseCase) : super(const ProductsState()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(state.copyWith(getAllProductsStatus: RequestStatus.loading));
      var result = await allProductsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getAllProductsStatus: RequestStatus.failure,
            allProductsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getAllProductsStatus: RequestStatus.success, allProductsModel: r));
      });
    });
  }
}

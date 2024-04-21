import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_brands_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  HomeBloc({required this.getCategoriesUseCase, required this.getBrandsUseCase})
      : super(const HomeState()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesStatus: RequestStatus.loading));
      var result = await getCategoriesUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failure, categoriesFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.success, categoriesModel: r));
      });
    });
    on<GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(getBrandsStatus: RequestStatus.loading));
      var result = await getBrandsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.failure, brandsFailure: l));
      }, (r) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.success, brandsModel: r));
      });
    });
    on<changeBottomNavBarEvent>((event, emit){
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}

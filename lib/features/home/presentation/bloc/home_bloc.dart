import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/home/data/models/brands_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/data/models/get_wish_list_model.dart';
import 'package:e_commerce_app/features/home/data/models/wish_list_model.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/add_to_wish_list_use_case.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/categories_tab_use_case.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/get_product_to_wish_list_use_case.dart';
import 'package:e_commerce_app/features/home/domain/use_cases/remove_product_from_wish_use_case.dart';
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
  CategoriesTabUseCase categoriesTabUseCase;
  AddProductToWishListUseCase addProductToWishListUseCase;
  GetProductToWishListUseCase getProductToWishListUseCase;
  RemoveProductFromWishUseCase removeProductFromWishUseCase;
  HomeBloc({
    required this.getCategoriesUseCase,
    required this.getBrandsUseCase,
    required this.categoriesTabUseCase,
    required this.addProductToWishListUseCase,
    required this.getProductToWishListUseCase,
    required this.removeProductFromWishUseCase,
  }) : super(const HomeState()) {
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
    on<changeBottomNavBarEvent>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
    on<GetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesTabStatus: RequestStatus.loading));
      var result = await categoriesTabUseCase.call(event.id);
      result.fold((l) {
        emit(state.copyWith(
            getCategoriesTabStatus: RequestStatus.failure,
            subCategoriesFailure: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesTabStatus: RequestStatus.success,
            subCategoriesModel: r));
      });
    });
    on<ChangeCategoryIndexEvent>(
      (event, emit) {
        emit(state.copyWith(selectedCategoryIndex: event.index));
      },
    );
    on<AddProductToWishListEvent>((event, emit) async {
      emit(state.copyWith(addProductToWishlistStatus: RequestStatus.loading));
      var result = await addProductToWishListUseCase(event.productId);
      result.fold((l) {
        emit(state.copyWith(
          addProductToWishlistStatus: RequestStatus.failure,
          addProductToWishlistFailure: l,
        ));
      }, (r) {
        emit(state.copyWith(
          addProductToWishlistStatus: RequestStatus.success,
          wishListModel: r,
        ));
      });
    });
    on<GetProductToWishListEvent>((event, emit) async {
      emit(state.copyWith(
          getProductToWishlistStatus: RequestStatus.loading,
          addProductToWishlistStatus: RequestStatus.init));
      var result = await getProductToWishListUseCase();
      result.fold((l) {
        emit(state.copyWith(
          getProductToWishlistStatus: RequestStatus.failure,
          getProductToWishlistFailure: l,
        ));
      }, (r) {
        emit(state.copyWith(
          getProductToWishlistStatus: RequestStatus.success,
          wishListLength: r.count ?? 0,
          getWishListModel: r,
        ));
      });
    });
    on<RemoveProductFromWishListEvent>((event, emit) async {
      emit(state.copyWith(
          removeProductFromWishlistStatus: RequestStatus.loading,
          addProductToWishlistStatus: RequestStatus.init));
      var result = await removeProductFromWishUseCase(event.productId);
      result.fold((l) {
        emit(state.copyWith(
            removeProductFromWishlistStatus: RequestStatus.failure,
            removeProductFromWishlistFailure: l));
      }, (r) {
        emit(state.copyWith(
            removeProductFromWishlistStatus: RequestStatus.success,
            getWishListModel: r));
      });
    });
  }
}

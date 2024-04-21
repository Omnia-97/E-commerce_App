import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/Categories/data/models/sub_categories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/categories_tab_use_case.dart';
part 'categories_tab_event.dart';
part 'categories_tab_state.dart';
part 'categories_tab_bloc.freezed.dart';
@injectable
class CategoriesTabBloc extends Bloc<CategoriesTabEvent, CategoriesTabState> {
  CategoriesTabUseCase? categoriesTabUseCase;
  CategoriesTabBloc({required this.categoriesTabUseCase}) : super(const CategoriesTabState()) {
    on<GetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesTabStatus: RequestStatus.loading));
      var result = await categoriesTabUseCase!.call(event.id);
      result.fold((l) {
        emit(state.copyWith(getCategoriesTabStatus: RequestStatus.failure, subCategoriesFailure: l ));
      }, (r) {
        emit(state.copyWith(getCategoriesTabStatus: RequestStatus.success, subCategoriesModel:  r));
      });
    });
   on<ChangeCategoryIndexEvent>(
     (event, emit) {
       emit(state.copyWith(selectedCategoryIndex: event.index));
     },
   );
  }
}

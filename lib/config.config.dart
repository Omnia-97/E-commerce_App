// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/api/api_manager.dart' as _i3;
import 'features/Categories/data/data_sources/categories_tab_remote_ds.dart'
    as _i4;
import 'features/Categories/data/data_sources/categories_tab_remote_ds_impl.dart'
    as _i5;
import 'features/Categories/data/repositories/categories_tab_repo_impl.dart'
    as _i13;
import 'features/Categories/domain/repositories/categories_tab_repo.dart'
    as _i12;
import 'features/Categories/domain/use_cases/categories_tab_use_case.dart'
    as _i11;
import 'features/Categories/presentation/bloc/categories_tab_bloc.dart' as _i10;
import 'features/home/data/data_sources/home_remote_ds.dart' as _i6;
import 'features/home/data/data_sources/home_remote_ds_impl.dart' as _i7;
import 'features/home/data/repository/home_repo_impl.dart' as _i9;
import 'features/home/domain/repository/home_repo.dart' as _i8;
import 'features/home/domain/use_cases/get_brands_use_case.dart' as _i14;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i15;
import 'features/home/presentation/bloc/home_bloc.dart' as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.CategoriesTabRemoteDS>(
        () => _i5.CategoriesTabRemoteDsImpl());
    gh.factory<_i6.HomeRemoteDS>(
        () => _i7.HomeRemoteDSImplement(gh<_i3.ApiManager>()));
    gh.factory<_i8.HomeRepo>(
        () => _i9.HomeRepoImplement(gh<_i6.HomeRemoteDS>()));
    gh.factory<_i10.CategoriesTabBloc>(() => _i10.CategoriesTabBloc(
        categoriesTabUseCase: gh<_i11.CategoriesTabUseCase>()));
    gh.factory<_i12.CategoriesTabRepo>(() => _i13.CategoriesTabImplement(
        categoriesTabRemoteDS: gh<_i4.CategoriesTabRemoteDS>()));
    gh.factory<_i14.GetBrandsUseCase>(
        () => _i14.GetBrandsUseCase(gh<_i8.HomeRepo>()));
    gh.factory<_i15.GetCategoriesUseCase>(
        () => _i15.GetCategoriesUseCase(gh<_i8.HomeRepo>()));
    gh.factory<_i11.CategoriesTabUseCase>(() => _i11.CategoriesTabUseCase(
        categoriesTabRepo: gh<_i12.CategoriesTabRepo>()));
    gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(
          getCategoriesUseCase: gh<_i15.GetCategoriesUseCase>(),
          getBrandsUseCase: gh<_i14.GetBrandsUseCase>(),
        ));
    return this;
  }
}

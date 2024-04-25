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
    as _i6;
import 'features/Categories/data/data_sources/categories_tab_remote_ds_impl.dart'
    as _i7;
import 'features/Categories/data/repositories/categories_tab_repo_impl.dart'
    as _i15;
import 'features/Categories/domain/repositories/categories_tab_repo.dart'
    as _i14;
import 'features/Categories/domain/use_cases/categories_tab_use_case.dart'
    as _i13;
import 'features/Categories/presentation/bloc/categories_tab_bloc.dart' as _i12;
import 'features/home/data/data_sources/home_remote_ds.dart' as _i8;
import 'features/home/data/data_sources/home_remote_ds_impl.dart' as _i9;
import 'features/home/data/repository/home_repo_impl.dart' as _i11;
import 'features/home/domain/repository/home_repo.dart' as _i10;
import 'features/home/domain/use_cases/get_brands_use_case.dart' as _i18;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i19;
import 'features/home/presentation/bloc/home_bloc.dart' as _i20;
import 'features/products/data/data_sources/all_products_remote_ds.dart' as _i4;
import 'features/products/data/data_sources/all_products_remote_ds_impl.dart'
    as _i5;
import 'features/products/data/repositories/all_products_repo_impl.dart'
    as _i17;
import 'features/products/domain/repositories/all_products_repo.dart' as _i16;
import 'features/products/domain/use_cases/all_products_use_case.dart' as _i21;
import 'features/products/presentation/bloc/products_bloc.dart' as _i22;

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
    gh.factory<_i4.AllProductsDS>(() => _i5.AllProductsDsImpl());
    gh.factory<_i6.CategoriesTabRemoteDS>(
        () => _i7.CategoriesTabRemoteDsImpl());
    gh.factory<_i8.HomeRemoteDS>(
        () => _i9.HomeRemoteDSImplement(gh<_i3.ApiManager>()));
    gh.factory<_i10.HomeRepo>(
        () => _i11.HomeRepoImplement(gh<_i8.HomeRemoteDS>()));
    gh.factory<_i12.CategoriesTabBloc>(() => _i12.CategoriesTabBloc(
        categoriesTabUseCase: gh<_i13.CategoriesTabUseCase>()));
    gh.factory<_i14.CategoriesTabRepo>(() => _i15.CategoriesTabImplement(
        categoriesTabRemoteDS: gh<_i6.CategoriesTabRemoteDS>()));
    gh.factory<_i16.AllProductsRepo>(
        () => _i17.AllProductsRepoImpl(gh<_i4.AllProductsDS>()));
    gh.factory<_i18.GetBrandsUseCase>(
        () => _i18.GetBrandsUseCase(gh<_i10.HomeRepo>()));
    gh.factory<_i19.GetCategoriesUseCase>(
        () => _i19.GetCategoriesUseCase(gh<_i10.HomeRepo>()));
    gh.factory<_i13.CategoriesTabUseCase>(() => _i13.CategoriesTabUseCase(
        categoriesTabRepo: gh<_i14.CategoriesTabRepo>()));
    gh.factory<_i20.HomeBloc>(() => _i20.HomeBloc(
          getCategoriesUseCase: gh<_i19.GetCategoriesUseCase>(),
          getBrandsUseCase: gh<_i18.GetBrandsUseCase>(),
        ));
    gh.factory<_i21.AllProductsUseCase>(
        () => _i21.AllProductsUseCase(gh<_i16.AllProductsRepo>()));
    gh.factory<_i22.ProductsBloc>(
        () => _i22.ProductsBloc(gh<_i21.AllProductsUseCase>()));
    return this;
  }
}

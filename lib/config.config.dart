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
import 'features/home/data/data_sources/home_remote_ds.dart' as _i6;
import 'features/home/data/data_sources/home_remote_ds_impl.dart' as _i7;
import 'features/home/data/repository/home_repo_impl.dart' as _i9;
import 'features/home/domain/repository/home_repo.dart' as _i8;
import 'features/home/domain/use_cases/categories_tab_use_case.dart' as _i14;
import 'features/home/domain/use_cases/get_brands_use_case.dart' as _i12;
import 'features/home/domain/use_cases/get_categories_use_case.dart' as _i13;
import 'features/home/presentation/bloc/home_bloc.dart' as _i15;
import 'features/products/data/data_sources/all_products_remote_ds.dart' as _i4;
import 'features/products/data/data_sources/all_products_remote_ds_impl.dart'
    as _i5;
import 'features/products/data/repositories/all_products_repo_impl.dart'
    as _i11;
import 'features/products/domain/repositories/all_products_repo.dart' as _i10;
import 'features/products/domain/use_cases/add_to_cart_use_case.dart' as _i16;
import 'features/products/domain/use_cases/all_products_use_case.dart' as _i17;
import 'features/products/domain/use_cases/get_cart_use_case.dart' as _i18;
import 'features/products/domain/use_cases/remove_product_from_cart.dart'
    as _i19;
import 'features/products/presentation/bloc/products_bloc.dart' as _i20;

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
    gh.factory<_i6.HomeRemoteDS>(
        () => _i7.HomeRemoteDSImplement(gh<_i3.ApiManager>()));
    gh.factory<_i8.HomeRepo>(
        () => _i9.HomeRepoImplement(gh<_i6.HomeRemoteDS>()));
    gh.factory<_i10.AllProductsRepo>(
        () => _i11.AllProductsRepoImpl(gh<_i4.AllProductsDS>()));
    gh.factory<_i12.GetBrandsUseCase>(
        () => _i12.GetBrandsUseCase(gh<_i8.HomeRepo>()));
    gh.factory<_i13.GetCategoriesUseCase>(
        () => _i13.GetCategoriesUseCase(gh<_i8.HomeRepo>()));
    gh.factory<_i14.CategoriesTabUseCase>(
        () => _i14.CategoriesTabUseCase(homeRepo: gh<_i8.HomeRepo>()));
    gh.factory<_i15.HomeBloc>(() => _i15.HomeBloc(
          getCategoriesUseCase: gh<_i13.GetCategoriesUseCase>(),
          getBrandsUseCase: gh<_i12.GetBrandsUseCase>(),
          categoriesTabUseCase: gh<_i14.CategoriesTabUseCase>(),
        ));
    gh.factory<_i16.AddProductToCartUseCase>(
        () => _i16.AddProductToCartUseCase(gh<_i10.AllProductsRepo>()));
    gh.factory<_i17.AllProductsUseCase>(
        () => _i17.AllProductsUseCase(gh<_i10.AllProductsRepo>()));
    gh.factory<_i18.GetProductToCartUseCase>(
        () => _i18.GetProductToCartUseCase(gh<_i10.AllProductsRepo>()));
    gh.factory<_i19.RemoveProductFromCartUseCase>(
        () => _i19.RemoveProductFromCartUseCase(gh<_i10.AllProductsRepo>()));
    gh.factory<_i20.ProductsBloc>(() => _i20.ProductsBloc(
          gh<_i17.AllProductsUseCase>(),
          gh<_i16.AddProductToCartUseCase>(),
          gh<_i18.GetProductToCartUseCase>(),
          gh<_i19.RemoveProductFromCartUseCase>(),
        ));
    return this;
  }
}

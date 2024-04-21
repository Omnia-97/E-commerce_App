// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function(int index) changeBottomNavBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function(int index)? changeBottomNavBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function(int index)? changeBottomNavBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(changeBottomNavBarEvent value) changeBottomNavBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(changeBottomNavBarEvent value)? changeBottomNavBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(changeBottomNavBarEvent value)? changeBottomNavBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function(int index) changeBottomNavBar,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function(int index)? changeBottomNavBar,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function(int index)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(changeBottomNavBarEvent value) changeBottomNavBar,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(changeBottomNavBarEvent value)? changeBottomNavBar,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(changeBottomNavBarEvent value)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function(int index) changeBottomNavBar,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function(int index)? changeBottomNavBar,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function(int index)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(changeBottomNavBarEvent value) changeBottomNavBar,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(changeBottomNavBarEvent value)? changeBottomNavBar,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(changeBottomNavBarEvent value)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements HomeEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$GetBrandsEventImplCopyWith<$Res> {
  factory _$$GetBrandsEventImplCopyWith(_$GetBrandsEventImpl value,
          $Res Function(_$GetBrandsEventImpl) then) =
      __$$GetBrandsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBrandsEventImpl>
    implements _$$GetBrandsEventImplCopyWith<$Res> {
  __$$GetBrandsEventImplCopyWithImpl(
      _$GetBrandsEventImpl _value, $Res Function(_$GetBrandsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrandsEventImpl implements GetBrandsEvent {
  const _$GetBrandsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function(int index) changeBottomNavBar,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function(int index)? changeBottomNavBar,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function(int index)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(changeBottomNavBarEvent value) changeBottomNavBar,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(changeBottomNavBarEvent value)? changeBottomNavBar,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(changeBottomNavBarEvent value)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class GetBrandsEvent implements HomeEvent {
  const factory GetBrandsEvent() = _$GetBrandsEventImpl;
}

/// @nodoc
abstract class _$$changeBottomNavBarEventImplCopyWith<$Res> {
  factory _$$changeBottomNavBarEventImplCopyWith(
          _$changeBottomNavBarEventImpl value,
          $Res Function(_$changeBottomNavBarEventImpl) then) =
      __$$changeBottomNavBarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$changeBottomNavBarEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$changeBottomNavBarEventImpl>
    implements _$$changeBottomNavBarEventImplCopyWith<$Res> {
  __$$changeBottomNavBarEventImplCopyWithImpl(
      _$changeBottomNavBarEventImpl _value,
      $Res Function(_$changeBottomNavBarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$changeBottomNavBarEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$changeBottomNavBarEventImpl implements changeBottomNavBarEvent {
  const _$changeBottomNavBarEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeBottomNavBar(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeBottomNavBarEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeBottomNavBarEventImplCopyWith<_$changeBottomNavBarEventImpl>
      get copyWith => __$$changeBottomNavBarEventImplCopyWithImpl<
          _$changeBottomNavBarEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function(int index) changeBottomNavBar,
  }) {
    return changeBottomNavBar(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function(int index)? changeBottomNavBar,
  }) {
    return changeBottomNavBar?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function(int index)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (changeBottomNavBar != null) {
      return changeBottomNavBar(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(changeBottomNavBarEvent value) changeBottomNavBar,
  }) {
    return changeBottomNavBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(changeBottomNavBarEvent value)? changeBottomNavBar,
  }) {
    return changeBottomNavBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(changeBottomNavBarEvent value)? changeBottomNavBar,
    required TResult orElse(),
  }) {
    if (changeBottomNavBar != null) {
      return changeBottomNavBar(this);
    }
    return orElse();
  }
}

abstract class changeBottomNavBarEvent implements HomeEvent {
  const factory changeBottomNavBarEvent(final int index) =
      _$changeBottomNavBarEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$changeBottomNavBarEventImplCopyWith<_$changeBottomNavBarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus get getCategoriesStatus => throw _privateConstructorUsedError;
  RequestStatus get getBrandsStatus => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  CategoriesModel? get categoriesModel => throw _privateConstructorUsedError;
  BrandsModel? get brandsModel => throw _privateConstructorUsedError;
  Failures? get categoriesFailure => throw _privateConstructorUsedError;
  Failures? get brandsFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestStatus getCategoriesStatus,
      RequestStatus getBrandsStatus,
      int currentIndex,
      CategoriesModel? categoriesModel,
      BrandsModel? brandsModel,
      Failures? categoriesFailure,
      Failures? brandsFailure});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesStatus = null,
    Object? getBrandsStatus = null,
    Object? currentIndex = null,
    Object? categoriesModel = freezed,
    Object? brandsModel = freezed,
    Object? categoriesFailure = freezed,
    Object? brandsFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      categoriesFailure: freezed == categoriesFailure
          ? _value.categoriesFailure
          : categoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      brandsFailure: freezed == brandsFailure
          ? _value.brandsFailure
          : brandsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getCategoriesStatus,
      RequestStatus getBrandsStatus,
      int currentIndex,
      CategoriesModel? categoriesModel,
      BrandsModel? brandsModel,
      Failures? categoriesFailure,
      Failures? brandsFailure});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesStatus = null,
    Object? getBrandsStatus = null,
    Object? currentIndex = null,
    Object? categoriesModel = freezed,
    Object? brandsModel = freezed,
    Object? categoriesFailure = freezed,
    Object? brandsFailure = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      categoriesFailure: freezed == categoriesFailure
          ? _value.categoriesFailure
          : categoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      brandsFailure: freezed == brandsFailure
          ? _value.brandsFailure
          : brandsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.getCategoriesStatus = RequestStatus.init,
      this.getBrandsStatus = RequestStatus.init,
      this.currentIndex = 0,
      this.categoriesModel,
      this.brandsModel,
      this.categoriesFailure,
      this.brandsFailure});

  @override
  @JsonKey()
  final RequestStatus getCategoriesStatus;
  @override
  @JsonKey()
  final RequestStatus getBrandsStatus;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  final CategoriesModel? categoriesModel;
  @override
  final BrandsModel? brandsModel;
  @override
  final Failures? categoriesFailure;
  @override
  final Failures? brandsFailure;

  @override
  String toString() {
    return 'HomeState(getCategoriesStatus: $getCategoriesStatus, getBrandsStatus: $getBrandsStatus, currentIndex: $currentIndex, categoriesModel: $categoriesModel, brandsModel: $brandsModel, categoriesFailure: $categoriesFailure, brandsFailure: $brandsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getCategoriesStatus, getCategoriesStatus) ||
                other.getCategoriesStatus == getCategoriesStatus) &&
            (identical(other.getBrandsStatus, getBrandsStatus) ||
                other.getBrandsStatus == getBrandsStatus) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.categoriesModel, categoriesModel) ||
                other.categoriesModel == categoriesModel) &&
            (identical(other.brandsModel, brandsModel) ||
                other.brandsModel == brandsModel) &&
            (identical(other.categoriesFailure, categoriesFailure) ||
                other.categoriesFailure == categoriesFailure) &&
            (identical(other.brandsFailure, brandsFailure) ||
                other.brandsFailure == brandsFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCategoriesStatus,
      getBrandsStatus,
      currentIndex,
      categoriesModel,
      brandsModel,
      categoriesFailure,
      brandsFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final RequestStatus getCategoriesStatus,
      final RequestStatus getBrandsStatus,
      final int currentIndex,
      final CategoriesModel? categoriesModel,
      final BrandsModel? brandsModel,
      final Failures? categoriesFailure,
      final Failures? brandsFailure}) = _$HomeStateImpl;

  @override
  RequestStatus get getCategoriesStatus;
  @override
  RequestStatus get getBrandsStatus;
  @override
  int get currentIndex;
  @override
  CategoriesModel? get categoriesModel;
  @override
  BrandsModel? get brandsModel;
  @override
  Failures? get categoriesFailure;
  @override
  Failures? get brandsFailure;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

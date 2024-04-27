// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProducts,
    required TResult Function(String productId) addProductToCart,
    required TResult Function() getProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProducts,
    TResult? Function(String productId)? addProductToCart,
    TResult? Function()? getProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProducts,
    TResult Function(String productId)? addProductToCart,
    TResult Function()? getProductToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllProductsEvent value) getAllProducts,
    required TResult Function(AddProductToCartEvent value) addProductToCart,
    required TResult Function(GetProductToCartEvent value) getProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllProductsEvent value)? getAllProducts,
    TResult? Function(AddProductToCartEvent value)? addProductToCart,
    TResult? Function(GetProductToCartEvent value)? getProductToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllProductsEvent value)? getAllProducts,
    TResult Function(AddProductToCartEvent value)? addProductToCart,
    TResult Function(GetProductToCartEvent value)? getProductToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

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
    extends _$ProductsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProductsEvent.started()';
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
    required TResult Function() getAllProducts,
    required TResult Function(String productId) addProductToCart,
    required TResult Function() getProductToCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProducts,
    TResult? Function(String productId)? addProductToCart,
    TResult? Function()? getProductToCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProducts,
    TResult Function(String productId)? addProductToCart,
    TResult Function()? getProductToCart,
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
    required TResult Function(GetAllProductsEvent value) getAllProducts,
    required TResult Function(AddProductToCartEvent value) addProductToCart,
    required TResult Function(GetProductToCartEvent value) getProductToCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllProductsEvent value)? getAllProducts,
    TResult? Function(AddProductToCartEvent value)? addProductToCart,
    TResult? Function(GetProductToCartEvent value)? getProductToCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllProductsEvent value)? getAllProducts,
    TResult Function(AddProductToCartEvent value)? addProductToCart,
    TResult Function(GetProductToCartEvent value)? getProductToCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllProductsEventImplCopyWith<$Res> {
  factory _$$GetAllProductsEventImplCopyWith(_$GetAllProductsEventImpl value,
          $Res Function(_$GetAllProductsEventImpl) then) =
      __$$GetAllProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsEventImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetAllProductsEventImpl>
    implements _$$GetAllProductsEventImplCopyWith<$Res> {
  __$$GetAllProductsEventImplCopyWithImpl(_$GetAllProductsEventImpl _value,
      $Res Function(_$GetAllProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProductsEventImpl implements GetAllProductsEvent {
  const _$GetAllProductsEventImpl();

  @override
  String toString() {
    return 'ProductsEvent.getAllProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProducts,
    required TResult Function(String productId) addProductToCart,
    required TResult Function() getProductToCart,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProducts,
    TResult? Function(String productId)? addProductToCart,
    TResult? Function()? getProductToCart,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProducts,
    TResult Function(String productId)? addProductToCart,
    TResult Function()? getProductToCart,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllProductsEvent value) getAllProducts,
    required TResult Function(AddProductToCartEvent value) addProductToCart,
    required TResult Function(GetProductToCartEvent value) getProductToCart,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllProductsEvent value)? getAllProducts,
    TResult? Function(AddProductToCartEvent value)? addProductToCart,
    TResult? Function(GetProductToCartEvent value)? getProductToCart,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllProductsEvent value)? getAllProducts,
    TResult Function(AddProductToCartEvent value)? addProductToCart,
    TResult Function(GetProductToCartEvent value)? getProductToCart,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsEvent implements ProductsEvent {
  const factory GetAllProductsEvent() = _$GetAllProductsEventImpl;
}

/// @nodoc
abstract class _$$AddProductToCartEventImplCopyWith<$Res> {
  factory _$$AddProductToCartEventImplCopyWith(
          _$AddProductToCartEventImpl value,
          $Res Function(_$AddProductToCartEventImpl) then) =
      __$$AddProductToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddProductToCartEventImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$AddProductToCartEventImpl>
    implements _$$AddProductToCartEventImplCopyWith<$Res> {
  __$$AddProductToCartEventImplCopyWithImpl(_$AddProductToCartEventImpl _value,
      $Res Function(_$AddProductToCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductToCartEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToCartEventImpl implements AddProductToCartEvent {
  const _$AddProductToCartEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductsEvent.addProductToCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => __$$AddProductToCartEventImplCopyWithImpl<
          _$AddProductToCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProducts,
    required TResult Function(String productId) addProductToCart,
    required TResult Function() getProductToCart,
  }) {
    return addProductToCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProducts,
    TResult? Function(String productId)? addProductToCart,
    TResult? Function()? getProductToCart,
  }) {
    return addProductToCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProducts,
    TResult Function(String productId)? addProductToCart,
    TResult Function()? getProductToCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllProductsEvent value) getAllProducts,
    required TResult Function(AddProductToCartEvent value) addProductToCart,
    required TResult Function(GetProductToCartEvent value) getProductToCart,
  }) {
    return addProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllProductsEvent value)? getAllProducts,
    TResult? Function(AddProductToCartEvent value)? addProductToCart,
    TResult? Function(GetProductToCartEvent value)? getProductToCart,
  }) {
    return addProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllProductsEvent value)? getAllProducts,
    TResult Function(AddProductToCartEvent value)? addProductToCart,
    TResult Function(GetProductToCartEvent value)? getProductToCart,
    required TResult orElse(),
  }) {
    if (addProductToCart != null) {
      return addProductToCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartEvent implements ProductsEvent {
  const factory AddProductToCartEvent(final String productId) =
      _$AddProductToCartEventImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductToCartEventImplCopyWith<$Res> {
  factory _$$GetProductToCartEventImplCopyWith(
          _$GetProductToCartEventImpl value,
          $Res Function(_$GetProductToCartEventImpl) then) =
      __$$GetProductToCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductToCartEventImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetProductToCartEventImpl>
    implements _$$GetProductToCartEventImplCopyWith<$Res> {
  __$$GetProductToCartEventImplCopyWithImpl(_$GetProductToCartEventImpl _value,
      $Res Function(_$GetProductToCartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductToCartEventImpl implements GetProductToCartEvent {
  const _$GetProductToCartEventImpl();

  @override
  String toString() {
    return 'ProductsEvent.getProductToCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductToCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllProducts,
    required TResult Function(String productId) addProductToCart,
    required TResult Function() getProductToCart,
  }) {
    return getProductToCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllProducts,
    TResult? Function(String productId)? addProductToCart,
    TResult? Function()? getProductToCart,
  }) {
    return getProductToCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllProducts,
    TResult Function(String productId)? addProductToCart,
    TResult Function()? getProductToCart,
    required TResult orElse(),
  }) {
    if (getProductToCart != null) {
      return getProductToCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllProductsEvent value) getAllProducts,
    required TResult Function(AddProductToCartEvent value) addProductToCart,
    required TResult Function(GetProductToCartEvent value) getProductToCart,
  }) {
    return getProductToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllProductsEvent value)? getAllProducts,
    TResult? Function(AddProductToCartEvent value)? addProductToCart,
    TResult? Function(GetProductToCartEvent value)? getProductToCart,
  }) {
    return getProductToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllProductsEvent value)? getAllProducts,
    TResult Function(AddProductToCartEvent value)? addProductToCart,
    TResult Function(GetProductToCartEvent value)? getProductToCart,
    required TResult orElse(),
  }) {
    if (getProductToCart != null) {
      return getProductToCart(this);
    }
    return orElse();
  }
}

abstract class GetProductToCartEvent implements ProductsEvent {
  const factory GetProductToCartEvent() = _$GetProductToCartEventImpl;
}

/// @nodoc
mixin _$ProductsState {
  RequestStatus get status => throw _privateConstructorUsedError;
  RequestStatus get getAllProductsStatus => throw _privateConstructorUsedError;
  RequestStatus get addProductToCartStatus =>
      throw _privateConstructorUsedError;
  RequestStatus get getProductToCartStatus =>
      throw _privateConstructorUsedError;
  int get cartItemLength => throw _privateConstructorUsedError;
  AllProductsModel? get allProductsModel => throw _privateConstructorUsedError;
  GetCartModel? get getCartModel => throw _privateConstructorUsedError;
  Failures? get allProductsFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {RequestStatus status,
      RequestStatus getAllProductsStatus,
      RequestStatus addProductToCartStatus,
      RequestStatus getProductToCartStatus,
      int cartItemLength,
      AllProductsModel? allProductsModel,
      GetCartModel? getCartModel,
      Failures? allProductsFailure});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getAllProductsStatus = null,
    Object? addProductToCartStatus = null,
    Object? getProductToCartStatus = null,
    Object? cartItemLength = null,
    Object? allProductsModel = freezed,
    Object? getCartModel = freezed,
    Object? allProductsFailure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getAllProductsStatus: null == getAllProductsStatus
          ? _value.getAllProductsStatus
          : getAllProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToCartStatus: null == addProductToCartStatus
          ? _value.addProductToCartStatus
          : addProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductToCartStatus: null == getProductToCartStatus
          ? _value.getProductToCartStatus
          : getProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      cartItemLength: null == cartItemLength
          ? _value.cartItemLength
          : cartItemLength // ignore: cast_nullable_to_non_nullable
              as int,
      allProductsModel: freezed == allProductsModel
          ? _value.allProductsModel
          : allProductsModel // ignore: cast_nullable_to_non_nullable
              as AllProductsModel?,
      getCartModel: freezed == getCartModel
          ? _value.getCartModel
          : getCartModel // ignore: cast_nullable_to_non_nullable
              as GetCartModel?,
      allProductsFailure: freezed == allProductsFailure
          ? _value.allProductsFailure
          : allProductsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus status,
      RequestStatus getAllProductsStatus,
      RequestStatus addProductToCartStatus,
      RequestStatus getProductToCartStatus,
      int cartItemLength,
      AllProductsModel? allProductsModel,
      GetCartModel? getCartModel,
      Failures? allProductsFailure});
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getAllProductsStatus = null,
    Object? addProductToCartStatus = null,
    Object? getProductToCartStatus = null,
    Object? cartItemLength = null,
    Object? allProductsModel = freezed,
    Object? getCartModel = freezed,
    Object? allProductsFailure = freezed,
  }) {
    return _then(_$ProductsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getAllProductsStatus: null == getAllProductsStatus
          ? _value.getAllProductsStatus
          : getAllProductsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addProductToCartStatus: null == addProductToCartStatus
          ? _value.addProductToCartStatus
          : addProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductToCartStatus: null == getProductToCartStatus
          ? _value.getProductToCartStatus
          : getProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      cartItemLength: null == cartItemLength
          ? _value.cartItemLength
          : cartItemLength // ignore: cast_nullable_to_non_nullable
              as int,
      allProductsModel: freezed == allProductsModel
          ? _value.allProductsModel
          : allProductsModel // ignore: cast_nullable_to_non_nullable
              as AllProductsModel?,
      getCartModel: freezed == getCartModel
          ? _value.getCartModel
          : getCartModel // ignore: cast_nullable_to_non_nullable
              as GetCartModel?,
      allProductsFailure: freezed == allProductsFailure
          ? _value.allProductsFailure
          : allProductsFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  const _$ProductsStateImpl(
      {this.status = RequestStatus.init,
      this.getAllProductsStatus = RequestStatus.init,
      this.addProductToCartStatus = RequestStatus.init,
      this.getProductToCartStatus = RequestStatus.init,
      this.cartItemLength = 0,
      this.allProductsModel,
      this.getCartModel,
      this.allProductsFailure});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final RequestStatus getAllProductsStatus;
  @override
  @JsonKey()
  final RequestStatus addProductToCartStatus;
  @override
  @JsonKey()
  final RequestStatus getProductToCartStatus;
  @override
  @JsonKey()
  final int cartItemLength;
  @override
  final AllProductsModel? allProductsModel;
  @override
  final GetCartModel? getCartModel;
  @override
  final Failures? allProductsFailure;

  @override
  String toString() {
    return 'ProductsState(status: $status, getAllProductsStatus: $getAllProductsStatus, addProductToCartStatus: $addProductToCartStatus, getProductToCartStatus: $getProductToCartStatus, cartItemLength: $cartItemLength, allProductsModel: $allProductsModel, getCartModel: $getCartModel, allProductsFailure: $allProductsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.getAllProductsStatus, getAllProductsStatus) ||
                other.getAllProductsStatus == getAllProductsStatus) &&
            (identical(other.addProductToCartStatus, addProductToCartStatus) ||
                other.addProductToCartStatus == addProductToCartStatus) &&
            (identical(other.getProductToCartStatus, getProductToCartStatus) ||
                other.getProductToCartStatus == getProductToCartStatus) &&
            (identical(other.cartItemLength, cartItemLength) ||
                other.cartItemLength == cartItemLength) &&
            (identical(other.allProductsModel, allProductsModel) ||
                other.allProductsModel == allProductsModel) &&
            (identical(other.getCartModel, getCartModel) ||
                other.getCartModel == getCartModel) &&
            (identical(other.allProductsFailure, allProductsFailure) ||
                other.allProductsFailure == allProductsFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      getAllProductsStatus,
      addProductToCartStatus,
      getProductToCartStatus,
      cartItemLength,
      allProductsModel,
      getCartModel,
      allProductsFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {final RequestStatus status,
      final RequestStatus getAllProductsStatus,
      final RequestStatus addProductToCartStatus,
      final RequestStatus getProductToCartStatus,
      final int cartItemLength,
      final AllProductsModel? allProductsModel,
      final GetCartModel? getCartModel,
      final Failures? allProductsFailure}) = _$ProductsStateImpl;

  @override
  RequestStatus get status;
  @override
  RequestStatus get getAllProductsStatus;
  @override
  RequestStatus get addProductToCartStatus;
  @override
  RequestStatus get getProductToCartStatus;
  @override
  int get cartItemLength;
  @override
  AllProductsModel? get allProductsModel;
  @override
  GetCartModel? get getCartModel;
  @override
  Failures? get allProductsFailure;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

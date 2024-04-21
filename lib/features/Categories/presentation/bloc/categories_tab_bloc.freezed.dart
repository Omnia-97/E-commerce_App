// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getSubCategories,
    required TResult Function(int index) changeCategoryIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getSubCategories,
    TResult? Function(int index)? changeCategoryIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getSubCategories,
    TResult Function(int index)? changeCategoryIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesTabEventCopyWith<$Res> {
  factory $CategoriesTabEventCopyWith(
          CategoriesTabEvent value, $Res Function(CategoriesTabEvent) then) =
      _$CategoriesTabEventCopyWithImpl<$Res, CategoriesTabEvent>;
}

/// @nodoc
class _$CategoriesTabEventCopyWithImpl<$Res, $Val extends CategoriesTabEvent>
    implements $CategoriesTabEventCopyWith<$Res> {
  _$CategoriesTabEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesTabEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CategoriesTabEvent.started()';
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
    required TResult Function(String id) getSubCategories,
    required TResult Function(int index) changeCategoryIndex,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getSubCategories,
    TResult? Function(int index)? changeCategoryIndex,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getSubCategories,
    TResult Function(int index)? changeCategoryIndex,
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
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndex,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoriesTabEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$GetSubCategoriesEventImplCopyWith(
          _$GetSubCategoriesEventImpl value,
          $Res Function(_$GetSubCategoriesEventImpl) then) =
      __$$GetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesTabEventCopyWithImpl<$Res, _$GetSubCategoriesEventImpl>
    implements _$$GetSubCategoriesEventImplCopyWith<$Res> {
  __$$GetSubCategoriesEventImplCopyWithImpl(_$GetSubCategoriesEventImpl _value,
      $Res Function(_$GetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSubCategoriesEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesEventImpl implements GetSubCategoriesEvent {
  const _$GetSubCategoriesEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CategoriesTabEvent.getSubCategories(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => __$$GetSubCategoriesEventImplCopyWithImpl<
          _$GetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getSubCategories,
    required TResult Function(int index) changeCategoryIndex,
  }) {
    return getSubCategories(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getSubCategories,
    TResult? Function(int index)? changeCategoryIndex,
  }) {
    return getSubCategories?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getSubCategories,
    TResult Function(int index)? changeCategoryIndex,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndex,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoriesEvent implements CategoriesTabEvent {
  const factory GetSubCategoriesEvent(final String id) =
      _$GetSubCategoriesEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryIndexEventImplCopyWith<$Res> {
  factory _$$ChangeCategoryIndexEventImplCopyWith(
          _$ChangeCategoryIndexEventImpl value,
          $Res Function(_$ChangeCategoryIndexEventImpl) then) =
      __$$ChangeCategoryIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCategoryIndexEventImplCopyWithImpl<$Res>
    extends _$CategoriesTabEventCopyWithImpl<$Res,
        _$ChangeCategoryIndexEventImpl>
    implements _$$ChangeCategoryIndexEventImplCopyWith<$Res> {
  __$$ChangeCategoryIndexEventImplCopyWithImpl(
      _$ChangeCategoryIndexEventImpl _value,
      $Res Function(_$ChangeCategoryIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCategoryIndexEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryIndexEventImpl implements ChangeCategoryIndexEvent {
  const _$ChangeCategoryIndexEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CategoriesTabEvent.changeCategoryIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryIndexEventImplCopyWith<_$ChangeCategoryIndexEventImpl>
      get copyWith => __$$ChangeCategoryIndexEventImplCopyWithImpl<
          _$ChangeCategoryIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getSubCategories,
    required TResult Function(int index) changeCategoryIndex,
  }) {
    return changeCategoryIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getSubCategories,
    TResult? Function(int index)? changeCategoryIndex,
  }) {
    return changeCategoryIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getSubCategories,
    TResult Function(int index)? changeCategoryIndex,
    required TResult orElse(),
  }) {
    if (changeCategoryIndex != null) {
      return changeCategoryIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryIndexEvent value)
        changeCategoryIndex,
  }) {
    return changeCategoryIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
  }) {
    return changeCategoryIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryIndexEvent value)? changeCategoryIndex,
    required TResult orElse(),
  }) {
    if (changeCategoryIndex != null) {
      return changeCategoryIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryIndexEvent implements CategoriesTabEvent {
  const factory ChangeCategoryIndexEvent(final int index) =
      _$ChangeCategoryIndexEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeCategoryIndexEventImplCopyWith<_$ChangeCategoryIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesTabState {
  RequestStatus? get getCategoriesTabStatus =>
      throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  SubCategoriesModel? get subCategoriesModel =>
      throw _privateConstructorUsedError;
  Failures? get subCategoriesFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesTabStateCopyWith<CategoriesTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesTabStateCopyWith<$Res> {
  factory $CategoriesTabStateCopyWith(
          CategoriesTabState value, $Res Function(CategoriesTabState) then) =
      _$CategoriesTabStateCopyWithImpl<$Res, CategoriesTabState>;
  @useResult
  $Res call(
      {RequestStatus? getCategoriesTabStatus,
      int selectedCategoryIndex,
      SubCategoriesModel? subCategoriesModel,
      Failures? subCategoriesFailure});
}

/// @nodoc
class _$CategoriesTabStateCopyWithImpl<$Res, $Val extends CategoriesTabState>
    implements $CategoriesTabStateCopyWith<$Res> {
  _$CategoriesTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesTabStatus = freezed,
    Object? selectedCategoryIndex = null,
    Object? subCategoriesModel = freezed,
    Object? subCategoriesFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getCategoriesTabStatus: freezed == getCategoriesTabStatus
          ? _value.getCategoriesTabStatus
          : getCategoriesTabStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoriesModel: freezed == subCategoriesModel
          ? _value.subCategoriesModel
          : subCategoriesModel // ignore: cast_nullable_to_non_nullable
              as SubCategoriesModel?,
      subCategoriesFailure: freezed == subCategoriesFailure
          ? _value.subCategoriesFailure
          : subCategoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesTabStateImplCopyWith<$Res>
    implements $CategoriesTabStateCopyWith<$Res> {
  factory _$$CategoriesTabStateImplCopyWith(_$CategoriesTabStateImpl value,
          $Res Function(_$CategoriesTabStateImpl) then) =
      __$$CategoriesTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus? getCategoriesTabStatus,
      int selectedCategoryIndex,
      SubCategoriesModel? subCategoriesModel,
      Failures? subCategoriesFailure});
}

/// @nodoc
class __$$CategoriesTabStateImplCopyWithImpl<$Res>
    extends _$CategoriesTabStateCopyWithImpl<$Res, _$CategoriesTabStateImpl>
    implements _$$CategoriesTabStateImplCopyWith<$Res> {
  __$$CategoriesTabStateImplCopyWithImpl(_$CategoriesTabStateImpl _value,
      $Res Function(_$CategoriesTabStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesTabStatus = freezed,
    Object? selectedCategoryIndex = null,
    Object? subCategoriesModel = freezed,
    Object? subCategoriesFailure = freezed,
  }) {
    return _then(_$CategoriesTabStateImpl(
      getCategoriesTabStatus: freezed == getCategoriesTabStatus
          ? _value.getCategoriesTabStatus
          : getCategoriesTabStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoriesModel: freezed == subCategoriesModel
          ? _value.subCategoriesModel
          : subCategoriesModel // ignore: cast_nullable_to_non_nullable
              as SubCategoriesModel?,
      subCategoriesFailure: freezed == subCategoriesFailure
          ? _value.subCategoriesFailure
          : subCategoriesFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$CategoriesTabStateImpl implements _CategoriesTabState {
  const _$CategoriesTabStateImpl(
      {this.getCategoriesTabStatus = RequestStatus.init,
      this.selectedCategoryIndex = 0,
      this.subCategoriesModel,
      this.subCategoriesFailure});

  @override
  @JsonKey()
  final RequestStatus? getCategoriesTabStatus;
  @override
  @JsonKey()
  final int selectedCategoryIndex;
  @override
  final SubCategoriesModel? subCategoriesModel;
  @override
  final Failures? subCategoriesFailure;

  @override
  String toString() {
    return 'CategoriesTabState(getCategoriesTabStatus: $getCategoriesTabStatus, selectedCategoryIndex: $selectedCategoryIndex, subCategoriesModel: $subCategoriesModel, subCategoriesFailure: $subCategoriesFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesTabStateImpl &&
            (identical(other.getCategoriesTabStatus, getCategoriesTabStatus) ||
                other.getCategoriesTabStatus == getCategoriesTabStatus) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.subCategoriesModel, subCategoriesModel) ||
                other.subCategoriesModel == subCategoriesModel) &&
            (identical(other.subCategoriesFailure, subCategoriesFailure) ||
                other.subCategoriesFailure == subCategoriesFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCategoriesTabStatus,
      selectedCategoryIndex, subCategoriesModel, subCategoriesFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesTabStateImplCopyWith<_$CategoriesTabStateImpl> get copyWith =>
      __$$CategoriesTabStateImplCopyWithImpl<_$CategoriesTabStateImpl>(
          this, _$identity);
}

abstract class _CategoriesTabState implements CategoriesTabState {
  const factory _CategoriesTabState(
      {final RequestStatus? getCategoriesTabStatus,
      final int selectedCategoryIndex,
      final SubCategoriesModel? subCategoriesModel,
      final Failures? subCategoriesFailure}) = _$CategoriesTabStateImpl;

  @override
  RequestStatus? get getCategoriesTabStatus;
  @override
  int get selectedCategoryIndex;
  @override
  SubCategoriesModel? get subCategoriesModel;
  @override
  Failures? get subCategoriesFailure;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesTabStateImplCopyWith<_$CategoriesTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

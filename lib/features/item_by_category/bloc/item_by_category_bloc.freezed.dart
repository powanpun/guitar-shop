// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemByCategoryEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getItemByCategory,
    required TResult Function(int id) getItemByCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getItemByCategory,
    TResult? Function(int id)? getItemByCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getItemByCategory,
    TResult Function(int id)? getItemByCategoryNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemByCategory value) getItemByCategory,
    required TResult Function(GetItemByCategoryNextPage value)
        getItemByCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemByCategory value)? getItemByCategory,
    TResult? Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemByCategory value)? getItemByCategory,
    TResult Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemByCategoryEventCopyWith<ItemByCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemByCategoryEventCopyWith<$Res> {
  factory $ItemByCategoryEventCopyWith(
          ItemByCategoryEvent value, $Res Function(ItemByCategoryEvent) then) =
      _$ItemByCategoryEventCopyWithImpl<$Res, ItemByCategoryEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ItemByCategoryEventCopyWithImpl<$Res, $Val extends ItemByCategoryEvent>
    implements $ItemByCategoryEventCopyWith<$Res> {
  _$ItemByCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetItemByCategoryCopyWith<$Res>
    implements $ItemByCategoryEventCopyWith<$Res> {
  factory _$$GetItemByCategoryCopyWith(
          _$GetItemByCategory value, $Res Function(_$GetItemByCategory) then) =
      __$$GetItemByCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetItemByCategoryCopyWithImpl<$Res>
    extends _$ItemByCategoryEventCopyWithImpl<$Res, _$GetItemByCategory>
    implements _$$GetItemByCategoryCopyWith<$Res> {
  __$$GetItemByCategoryCopyWithImpl(
      _$GetItemByCategory _value, $Res Function(_$GetItemByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetItemByCategory(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetItemByCategory implements GetItemByCategory {
  const _$GetItemByCategory(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ItemByCategoryEvent.getItemByCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemByCategory &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemByCategoryCopyWith<_$GetItemByCategory> get copyWith =>
      __$$GetItemByCategoryCopyWithImpl<_$GetItemByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getItemByCategory,
    required TResult Function(int id) getItemByCategoryNextPage,
  }) {
    return getItemByCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getItemByCategory,
    TResult? Function(int id)? getItemByCategoryNextPage,
  }) {
    return getItemByCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getItemByCategory,
    TResult Function(int id)? getItemByCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getItemByCategory != null) {
      return getItemByCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemByCategory value) getItemByCategory,
    required TResult Function(GetItemByCategoryNextPage value)
        getItemByCategoryNextPage,
  }) {
    return getItemByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemByCategory value)? getItemByCategory,
    TResult? Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
  }) {
    return getItemByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemByCategory value)? getItemByCategory,
    TResult Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getItemByCategory != null) {
      return getItemByCategory(this);
    }
    return orElse();
  }
}

abstract class GetItemByCategory implements ItemByCategoryEvent {
  const factory GetItemByCategory(final int id) = _$GetItemByCategory;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$GetItemByCategoryCopyWith<_$GetItemByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetItemByCategoryNextPageCopyWith<$Res>
    implements $ItemByCategoryEventCopyWith<$Res> {
  factory _$$GetItemByCategoryNextPageCopyWith(
          _$GetItemByCategoryNextPage value,
          $Res Function(_$GetItemByCategoryNextPage) then) =
      __$$GetItemByCategoryNextPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetItemByCategoryNextPageCopyWithImpl<$Res>
    extends _$ItemByCategoryEventCopyWithImpl<$Res, _$GetItemByCategoryNextPage>
    implements _$$GetItemByCategoryNextPageCopyWith<$Res> {
  __$$GetItemByCategoryNextPageCopyWithImpl(_$GetItemByCategoryNextPage _value,
      $Res Function(_$GetItemByCategoryNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetItemByCategoryNextPage(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetItemByCategoryNextPage implements GetItemByCategoryNextPage {
  const _$GetItemByCategoryNextPage(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ItemByCategoryEvent.getItemByCategoryNextPage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItemByCategoryNextPage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItemByCategoryNextPageCopyWith<_$GetItemByCategoryNextPage>
      get copyWith => __$$GetItemByCategoryNextPageCopyWithImpl<
          _$GetItemByCategoryNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getItemByCategory,
    required TResult Function(int id) getItemByCategoryNextPage,
  }) {
    return getItemByCategoryNextPage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getItemByCategory,
    TResult? Function(int id)? getItemByCategoryNextPage,
  }) {
    return getItemByCategoryNextPage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getItemByCategory,
    TResult Function(int id)? getItemByCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getItemByCategoryNextPage != null) {
      return getItemByCategoryNextPage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetItemByCategory value) getItemByCategory,
    required TResult Function(GetItemByCategoryNextPage value)
        getItemByCategoryNextPage,
  }) {
    return getItemByCategoryNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetItemByCategory value)? getItemByCategory,
    TResult? Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
  }) {
    return getItemByCategoryNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetItemByCategory value)? getItemByCategory,
    TResult Function(GetItemByCategoryNextPage value)?
        getItemByCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getItemByCategoryNextPage != null) {
      return getItemByCategoryNextPage(this);
    }
    return orElse();
  }
}

abstract class GetItemByCategoryNextPage implements ItemByCategoryEvent {
  const factory GetItemByCategoryNextPage(final int id) =
      _$GetItemByCategoryNextPage;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$GetItemByCategoryNextPageCopyWith<_$GetItemByCategoryNextPage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemByCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() itemByCategoryLoading,
    required TResult Function(List<ProductModel> productModel)
        itemByCategoryLoaded,
    required TResult Function(String errorMsg) itemByCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? itemByCategoryLoading,
    TResult? Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult? Function(String errorMsg)? itemByCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? itemByCategoryLoading,
    TResult Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult Function(String errorMsg)? itemByCategoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ItemByCategoryLoading value)
        itemByCategoryLoading,
    required TResult Function(ItemByCategoryLoaded value) itemByCategoryLoaded,
    required TResult Function(ItemByCategoryError value) itemByCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult? Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult? Function(ItemByCategoryError value)? itemByCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult Function(ItemByCategoryError value)? itemByCategoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemByCategoryStateCopyWith<$Res> {
  factory $ItemByCategoryStateCopyWith(
          ItemByCategoryState value, $Res Function(ItemByCategoryState) then) =
      _$ItemByCategoryStateCopyWithImpl<$Res, ItemByCategoryState>;
}

/// @nodoc
class _$ItemByCategoryStateCopyWithImpl<$Res, $Val extends ItemByCategoryState>
    implements $ItemByCategoryStateCopyWith<$Res> {
  _$ItemByCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ItemByCategoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ItemByCategoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() itemByCategoryLoading,
    required TResult Function(List<ProductModel> productModel)
        itemByCategoryLoaded,
    required TResult Function(String errorMsg) itemByCategoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? itemByCategoryLoading,
    TResult? Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult? Function(String errorMsg)? itemByCategoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? itemByCategoryLoading,
    TResult Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult Function(String errorMsg)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ItemByCategoryLoading value)
        itemByCategoryLoading,
    required TResult Function(ItemByCategoryLoaded value) itemByCategoryLoaded,
    required TResult Function(ItemByCategoryError value) itemByCategoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult? Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult? Function(ItemByCategoryError value)? itemByCategoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult Function(ItemByCategoryError value)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ItemByCategoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ItemByCategoryLoadingCopyWith<$Res> {
  factory _$$ItemByCategoryLoadingCopyWith(_$ItemByCategoryLoading value,
          $Res Function(_$ItemByCategoryLoading) then) =
      __$$ItemByCategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemByCategoryLoadingCopyWithImpl<$Res>
    extends _$ItemByCategoryStateCopyWithImpl<$Res, _$ItemByCategoryLoading>
    implements _$$ItemByCategoryLoadingCopyWith<$Res> {
  __$$ItemByCategoryLoadingCopyWithImpl(_$ItemByCategoryLoading _value,
      $Res Function(_$ItemByCategoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemByCategoryLoading implements ItemByCategoryLoading {
  const _$ItemByCategoryLoading();

  @override
  String toString() {
    return 'ItemByCategoryState.itemByCategoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemByCategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() itemByCategoryLoading,
    required TResult Function(List<ProductModel> productModel)
        itemByCategoryLoaded,
    required TResult Function(String errorMsg) itemByCategoryError,
  }) {
    return itemByCategoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? itemByCategoryLoading,
    TResult? Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult? Function(String errorMsg)? itemByCategoryError,
  }) {
    return itemByCategoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? itemByCategoryLoading,
    TResult Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult Function(String errorMsg)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryLoading != null) {
      return itemByCategoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ItemByCategoryLoading value)
        itemByCategoryLoading,
    required TResult Function(ItemByCategoryLoaded value) itemByCategoryLoaded,
    required TResult Function(ItemByCategoryError value) itemByCategoryError,
  }) {
    return itemByCategoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult? Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult? Function(ItemByCategoryError value)? itemByCategoryError,
  }) {
    return itemByCategoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult Function(ItemByCategoryError value)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryLoading != null) {
      return itemByCategoryLoading(this);
    }
    return orElse();
  }
}

abstract class ItemByCategoryLoading implements ItemByCategoryState {
  const factory ItemByCategoryLoading() = _$ItemByCategoryLoading;
}

/// @nodoc
abstract class _$$ItemByCategoryLoadedCopyWith<$Res> {
  factory _$$ItemByCategoryLoadedCopyWith(_$ItemByCategoryLoaded value,
          $Res Function(_$ItemByCategoryLoaded) then) =
      __$$ItemByCategoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class __$$ItemByCategoryLoadedCopyWithImpl<$Res>
    extends _$ItemByCategoryStateCopyWithImpl<$Res, _$ItemByCategoryLoaded>
    implements _$$ItemByCategoryLoadedCopyWith<$Res> {
  __$$ItemByCategoryLoadedCopyWithImpl(_$ItemByCategoryLoaded _value,
      $Res Function(_$ItemByCategoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_$ItemByCategoryLoaded(
      null == productModel
          ? _value._productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ItemByCategoryLoaded implements ItemByCategoryLoaded {
  const _$ItemByCategoryLoaded(final List<ProductModel> productModel)
      : _productModel = productModel;

  final List<ProductModel> _productModel;
  @override
  List<ProductModel> get productModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productModel);
  }

  @override
  String toString() {
    return 'ItemByCategoryState.itemByCategoryLoaded(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemByCategoryLoaded &&
            const DeepCollectionEquality()
                .equals(other._productModel, _productModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemByCategoryLoadedCopyWith<_$ItemByCategoryLoaded> get copyWith =>
      __$$ItemByCategoryLoadedCopyWithImpl<_$ItemByCategoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() itemByCategoryLoading,
    required TResult Function(List<ProductModel> productModel)
        itemByCategoryLoaded,
    required TResult Function(String errorMsg) itemByCategoryError,
  }) {
    return itemByCategoryLoaded(productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? itemByCategoryLoading,
    TResult? Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult? Function(String errorMsg)? itemByCategoryError,
  }) {
    return itemByCategoryLoaded?.call(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? itemByCategoryLoading,
    TResult Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult Function(String errorMsg)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryLoaded != null) {
      return itemByCategoryLoaded(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ItemByCategoryLoading value)
        itemByCategoryLoading,
    required TResult Function(ItemByCategoryLoaded value) itemByCategoryLoaded,
    required TResult Function(ItemByCategoryError value) itemByCategoryError,
  }) {
    return itemByCategoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult? Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult? Function(ItemByCategoryError value)? itemByCategoryError,
  }) {
    return itemByCategoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult Function(ItemByCategoryError value)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryLoaded != null) {
      return itemByCategoryLoaded(this);
    }
    return orElse();
  }
}

abstract class ItemByCategoryLoaded implements ItemByCategoryState {
  const factory ItemByCategoryLoaded(final List<ProductModel> productModel) =
      _$ItemByCategoryLoaded;

  List<ProductModel> get productModel;
  @JsonKey(ignore: true)
  _$$ItemByCategoryLoadedCopyWith<_$ItemByCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemByCategoryErrorCopyWith<$Res> {
  factory _$$ItemByCategoryErrorCopyWith(_$ItemByCategoryError value,
          $Res Function(_$ItemByCategoryError) then) =
      __$$ItemByCategoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ItemByCategoryErrorCopyWithImpl<$Res>
    extends _$ItemByCategoryStateCopyWithImpl<$Res, _$ItemByCategoryError>
    implements _$$ItemByCategoryErrorCopyWith<$Res> {
  __$$ItemByCategoryErrorCopyWithImpl(
      _$ItemByCategoryError _value, $Res Function(_$ItemByCategoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ItemByCategoryError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemByCategoryError implements ItemByCategoryError {
  const _$ItemByCategoryError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ItemByCategoryState.itemByCategoryError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemByCategoryError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemByCategoryErrorCopyWith<_$ItemByCategoryError> get copyWith =>
      __$$ItemByCategoryErrorCopyWithImpl<_$ItemByCategoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() itemByCategoryLoading,
    required TResult Function(List<ProductModel> productModel)
        itemByCategoryLoaded,
    required TResult Function(String errorMsg) itemByCategoryError,
  }) {
    return itemByCategoryError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? itemByCategoryLoading,
    TResult? Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult? Function(String errorMsg)? itemByCategoryError,
  }) {
    return itemByCategoryError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? itemByCategoryLoading,
    TResult Function(List<ProductModel> productModel)? itemByCategoryLoaded,
    TResult Function(String errorMsg)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryError != null) {
      return itemByCategoryError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ItemByCategoryLoading value)
        itemByCategoryLoading,
    required TResult Function(ItemByCategoryLoaded value) itemByCategoryLoaded,
    required TResult Function(ItemByCategoryError value) itemByCategoryError,
  }) {
    return itemByCategoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult? Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult? Function(ItemByCategoryError value)? itemByCategoryError,
  }) {
    return itemByCategoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ItemByCategoryLoading value)? itemByCategoryLoading,
    TResult Function(ItemByCategoryLoaded value)? itemByCategoryLoaded,
    TResult Function(ItemByCategoryError value)? itemByCategoryError,
    required TResult orElse(),
  }) {
    if (itemByCategoryError != null) {
      return itemByCategoryError(this);
    }
    return orElse();
  }
}

abstract class ItemByCategoryError implements ItemByCategoryState {
  const factory ItemByCategoryError(final String errorMsg) =
      _$ItemByCategoryError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$ItemByCategoryErrorCopyWith<_$ItemByCategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

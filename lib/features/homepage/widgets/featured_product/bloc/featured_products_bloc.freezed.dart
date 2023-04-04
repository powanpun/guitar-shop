// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeaturedProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedProducts value) getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedProducts value)? getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedProducts value)? getFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductsEventCopyWith<$Res> {
  factory $FeaturedProductsEventCopyWith(FeaturedProductsEvent value,
          $Res Function(FeaturedProductsEvent) then) =
      _$FeaturedProductsEventCopyWithImpl<$Res, FeaturedProductsEvent>;
}

/// @nodoc
class _$FeaturedProductsEventCopyWithImpl<$Res,
        $Val extends FeaturedProductsEvent>
    implements $FeaturedProductsEventCopyWith<$Res> {
  _$FeaturedProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFeaturedProductsCopyWith<$Res> {
  factory _$$GetFeaturedProductsCopyWith(_$GetFeaturedProducts value,
          $Res Function(_$GetFeaturedProducts) then) =
      __$$GetFeaturedProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFeaturedProductsCopyWithImpl<$Res>
    extends _$FeaturedProductsEventCopyWithImpl<$Res, _$GetFeaturedProducts>
    implements _$$GetFeaturedProductsCopyWith<$Res> {
  __$$GetFeaturedProductsCopyWithImpl(
      _$GetFeaturedProducts _value, $Res Function(_$GetFeaturedProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFeaturedProducts implements GetFeaturedProducts {
  const _$GetFeaturedProducts();

  @override
  String toString() {
    return 'FeaturedProductsEvent.getFeaturedProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFeaturedProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeaturedProducts,
  }) {
    return getFeaturedProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeaturedProducts,
  }) {
    return getFeaturedProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeaturedProducts,
    required TResult orElse(),
  }) {
    if (getFeaturedProducts != null) {
      return getFeaturedProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedProducts value) getFeaturedProducts,
  }) {
    return getFeaturedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedProducts value)? getFeaturedProducts,
  }) {
    return getFeaturedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedProducts value)? getFeaturedProducts,
    required TResult orElse(),
  }) {
    if (getFeaturedProducts != null) {
      return getFeaturedProducts(this);
    }
    return orElse();
  }
}

abstract class GetFeaturedProducts implements FeaturedProductsEvent {
  const factory GetFeaturedProducts() = _$GetFeaturedProducts;
}

/// @nodoc
mixin _$FeaturedProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductLoading,
    required TResult Function(BaseResultModel result) featuredProductsLoaded,
    required TResult Function(String errorMsg) featuredProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductLoading,
    TResult? Function(BaseResultModel result)? featuredProductsLoaded,
    TResult? Function(String errorMsg)? featuredProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductLoading,
    TResult Function(BaseResultModel result)? featuredProductsLoaded,
    TResult Function(String errorMsg)? featuredProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductLoading value)
        featuredProductLoading,
    required TResult Function(FeaturedProductLoaded value)
        featuredProductsLoaded,
    required TResult Function(FeaturedProductError value) featuredProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult? Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult? Function(FeaturedProductError value)? featuredProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult Function(FeaturedProductError value)? featuredProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductsStateCopyWith<$Res> {
  factory $FeaturedProductsStateCopyWith(FeaturedProductsState value,
          $Res Function(FeaturedProductsState) then) =
      _$FeaturedProductsStateCopyWithImpl<$Res, FeaturedProductsState>;
}

/// @nodoc
class _$FeaturedProductsStateCopyWithImpl<$Res,
        $Val extends FeaturedProductsState>
    implements $FeaturedProductsStateCopyWith<$Res> {
  _$FeaturedProductsStateCopyWithImpl(this._value, this._then);

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
    extends _$FeaturedProductsStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FeaturedProductsState.initial()';
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
    required TResult Function() featuredProductLoading,
    required TResult Function(BaseResultModel result) featuredProductsLoaded,
    required TResult Function(String errorMsg) featuredProductsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductLoading,
    TResult? Function(BaseResultModel result)? featuredProductsLoaded,
    TResult? Function(String errorMsg)? featuredProductsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductLoading,
    TResult Function(BaseResultModel result)? featuredProductsLoaded,
    TResult Function(String errorMsg)? featuredProductsError,
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
    required TResult Function(FeaturedProductLoading value)
        featuredProductLoading,
    required TResult Function(FeaturedProductLoaded value)
        featuredProductsLoaded,
    required TResult Function(FeaturedProductError value) featuredProductsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult? Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult? Function(FeaturedProductError value)? featuredProductsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult Function(FeaturedProductError value)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeaturedProductsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FeaturedProductLoadingCopyWith<$Res> {
  factory _$$FeaturedProductLoadingCopyWith(_$FeaturedProductLoading value,
          $Res Function(_$FeaturedProductLoading) then) =
      __$$FeaturedProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedProductLoadingCopyWithImpl<$Res>
    extends _$FeaturedProductsStateCopyWithImpl<$Res, _$FeaturedProductLoading>
    implements _$$FeaturedProductLoadingCopyWith<$Res> {
  __$$FeaturedProductLoadingCopyWithImpl(_$FeaturedProductLoading _value,
      $Res Function(_$FeaturedProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeaturedProductLoading implements FeaturedProductLoading {
  const _$FeaturedProductLoading();

  @override
  String toString() {
    return 'FeaturedProductsState.featuredProductLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeaturedProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductLoading,
    required TResult Function(BaseResultModel result) featuredProductsLoaded,
    required TResult Function(String errorMsg) featuredProductsError,
  }) {
    return featuredProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductLoading,
    TResult? Function(BaseResultModel result)? featuredProductsLoaded,
    TResult? Function(String errorMsg)? featuredProductsError,
  }) {
    return featuredProductLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductLoading,
    TResult Function(BaseResultModel result)? featuredProductsLoaded,
    TResult Function(String errorMsg)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductLoading != null) {
      return featuredProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductLoading value)
        featuredProductLoading,
    required TResult Function(FeaturedProductLoaded value)
        featuredProductsLoaded,
    required TResult Function(FeaturedProductError value) featuredProductsError,
  }) {
    return featuredProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult? Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult? Function(FeaturedProductError value)? featuredProductsError,
  }) {
    return featuredProductLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult Function(FeaturedProductError value)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductLoading != null) {
      return featuredProductLoading(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductLoading implements FeaturedProductsState {
  const factory FeaturedProductLoading() = _$FeaturedProductLoading;
}

/// @nodoc
abstract class _$$FeaturedProductLoadedCopyWith<$Res> {
  factory _$$FeaturedProductLoadedCopyWith(_$FeaturedProductLoaded value,
          $Res Function(_$FeaturedProductLoaded) then) =
      __$$FeaturedProductLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResultModel result});

  $BaseResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$FeaturedProductLoadedCopyWithImpl<$Res>
    extends _$FeaturedProductsStateCopyWithImpl<$Res, _$FeaturedProductLoaded>
    implements _$$FeaturedProductLoadedCopyWith<$Res> {
  __$$FeaturedProductLoadedCopyWithImpl(_$FeaturedProductLoaded _value,
      $Res Function(_$FeaturedProductLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FeaturedProductLoaded(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BaseResultModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseResultModelCopyWith<$Res> get result {
    return $BaseResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$FeaturedProductLoaded implements FeaturedProductLoaded {
  const _$FeaturedProductLoaded(this.result);

  @override
  final BaseResultModel result;

  @override
  String toString() {
    return 'FeaturedProductsState.featuredProductsLoaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductLoaded &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductLoadedCopyWith<_$FeaturedProductLoaded> get copyWith =>
      __$$FeaturedProductLoadedCopyWithImpl<_$FeaturedProductLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductLoading,
    required TResult Function(BaseResultModel result) featuredProductsLoaded,
    required TResult Function(String errorMsg) featuredProductsError,
  }) {
    return featuredProductsLoaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductLoading,
    TResult? Function(BaseResultModel result)? featuredProductsLoaded,
    TResult? Function(String errorMsg)? featuredProductsError,
  }) {
    return featuredProductsLoaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductLoading,
    TResult Function(BaseResultModel result)? featuredProductsLoaded,
    TResult Function(String errorMsg)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductsLoaded != null) {
      return featuredProductsLoaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductLoading value)
        featuredProductLoading,
    required TResult Function(FeaturedProductLoaded value)
        featuredProductsLoaded,
    required TResult Function(FeaturedProductError value) featuredProductsError,
  }) {
    return featuredProductsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult? Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult? Function(FeaturedProductError value)? featuredProductsError,
  }) {
    return featuredProductsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult Function(FeaturedProductError value)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductsLoaded != null) {
      return featuredProductsLoaded(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductLoaded implements FeaturedProductsState {
  const factory FeaturedProductLoaded(final BaseResultModel result) =
      _$FeaturedProductLoaded;

  BaseResultModel get result;
  @JsonKey(ignore: true)
  _$$FeaturedProductLoadedCopyWith<_$FeaturedProductLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedProductErrorCopyWith<$Res> {
  factory _$$FeaturedProductErrorCopyWith(_$FeaturedProductError value,
          $Res Function(_$FeaturedProductError) then) =
      __$$FeaturedProductErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$FeaturedProductErrorCopyWithImpl<$Res>
    extends _$FeaturedProductsStateCopyWithImpl<$Res, _$FeaturedProductError>
    implements _$$FeaturedProductErrorCopyWith<$Res> {
  __$$FeaturedProductErrorCopyWithImpl(_$FeaturedProductError _value,
      $Res Function(_$FeaturedProductError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$FeaturedProductError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeaturedProductError implements FeaturedProductError {
  const _$FeaturedProductError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'FeaturedProductsState.featuredProductsError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductErrorCopyWith<_$FeaturedProductError> get copyWith =>
      __$$FeaturedProductErrorCopyWithImpl<_$FeaturedProductError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductLoading,
    required TResult Function(BaseResultModel result) featuredProductsLoaded,
    required TResult Function(String errorMsg) featuredProductsError,
  }) {
    return featuredProductsError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductLoading,
    TResult? Function(BaseResultModel result)? featuredProductsLoaded,
    TResult? Function(String errorMsg)? featuredProductsError,
  }) {
    return featuredProductsError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductLoading,
    TResult Function(BaseResultModel result)? featuredProductsLoaded,
    TResult Function(String errorMsg)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductsError != null) {
      return featuredProductsError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductLoading value)
        featuredProductLoading,
    required TResult Function(FeaturedProductLoaded value)
        featuredProductsLoaded,
    required TResult Function(FeaturedProductError value) featuredProductsError,
  }) {
    return featuredProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult? Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult? Function(FeaturedProductError value)? featuredProductsError,
  }) {
    return featuredProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductLoading value)? featuredProductLoading,
    TResult Function(FeaturedProductLoaded value)? featuredProductsLoaded,
    TResult Function(FeaturedProductError value)? featuredProductsError,
    required TResult orElse(),
  }) {
    if (featuredProductsError != null) {
      return featuredProductsError(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductError implements FeaturedProductsState {
  const factory FeaturedProductError(final String errorMsg) =
      _$FeaturedProductError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$FeaturedProductErrorCopyWith<_$FeaturedProductError> get copyWith =>
      throw _privateConstructorUsedError;
}

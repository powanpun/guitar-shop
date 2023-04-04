// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_category_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeaturedCategoryListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeaturedCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeaturedCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeaturedCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedCategoryList value)
        getFeaturedCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedCategoryList value)? getFeaturedCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedCategoryList value)? getFeaturedCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedCategoryListEventCopyWith<$Res> {
  factory $FeaturedCategoryListEventCopyWith(FeaturedCategoryListEvent value,
          $Res Function(FeaturedCategoryListEvent) then) =
      _$FeaturedCategoryListEventCopyWithImpl<$Res, FeaturedCategoryListEvent>;
}

/// @nodoc
class _$FeaturedCategoryListEventCopyWithImpl<$Res,
        $Val extends FeaturedCategoryListEvent>
    implements $FeaturedCategoryListEventCopyWith<$Res> {
  _$FeaturedCategoryListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFeaturedCategoryListCopyWith<$Res> {
  factory _$$GetFeaturedCategoryListCopyWith(_$GetFeaturedCategoryList value,
          $Res Function(_$GetFeaturedCategoryList) then) =
      __$$GetFeaturedCategoryListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFeaturedCategoryListCopyWithImpl<$Res>
    extends _$FeaturedCategoryListEventCopyWithImpl<$Res,
        _$GetFeaturedCategoryList>
    implements _$$GetFeaturedCategoryListCopyWith<$Res> {
  __$$GetFeaturedCategoryListCopyWithImpl(_$GetFeaturedCategoryList _value,
      $Res Function(_$GetFeaturedCategoryList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFeaturedCategoryList implements GetFeaturedCategoryList {
  const _$GetFeaturedCategoryList();

  @override
  String toString() {
    return 'FeaturedCategoryListEvent.getFeaturedCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeaturedCategoryList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeaturedCategoryList,
  }) {
    return getFeaturedCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeaturedCategoryList,
  }) {
    return getFeaturedCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeaturedCategoryList,
    required TResult orElse(),
  }) {
    if (getFeaturedCategoryList != null) {
      return getFeaturedCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedCategoryList value)
        getFeaturedCategoryList,
  }) {
    return getFeaturedCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedCategoryList value)? getFeaturedCategoryList,
  }) {
    return getFeaturedCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedCategoryList value)? getFeaturedCategoryList,
    required TResult orElse(),
  }) {
    if (getFeaturedCategoryList != null) {
      return getFeaturedCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetFeaturedCategoryList implements FeaturedCategoryListEvent {
  const factory GetFeaturedCategoryList() = _$GetFeaturedCategoryList;
}

/// @nodoc
mixin _$FeaturedCategoryListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredCategoryLoading,
    required TResult Function(Result result) featuredCategorysLoaded,
    required TResult Function(String errorMsg) featuredCategorysError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredCategoryLoading,
    TResult? Function(Result result)? featuredCategorysLoaded,
    TResult? Function(String errorMsg)? featuredCategorysError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredCategoryLoading,
    TResult Function(Result result)? featuredCategorysLoaded,
    TResult Function(String errorMsg)? featuredCategorysError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedCategoryLoading value)
        featuredCategoryLoading,
    required TResult Function(FeaturedCategoryLoaded value)
        featuredCategorysLoaded,
    required TResult Function(FeaturedCategoryError value)
        featuredCategorysError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult? Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult? Function(FeaturedCategoryError value)? featuredCategorysError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult Function(FeaturedCategoryError value)? featuredCategorysError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedCategoryListStateCopyWith<$Res> {
  factory $FeaturedCategoryListStateCopyWith(FeaturedCategoryListState value,
          $Res Function(FeaturedCategoryListState) then) =
      _$FeaturedCategoryListStateCopyWithImpl<$Res, FeaturedCategoryListState>;
}

/// @nodoc
class _$FeaturedCategoryListStateCopyWithImpl<$Res,
        $Val extends FeaturedCategoryListState>
    implements $FeaturedCategoryListStateCopyWith<$Res> {
  _$FeaturedCategoryListStateCopyWithImpl(this._value, this._then);

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
    extends _$FeaturedCategoryListStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FeaturedCategoryListState.initial()';
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
    required TResult Function() featuredCategoryLoading,
    required TResult Function(Result result) featuredCategorysLoaded,
    required TResult Function(String errorMsg) featuredCategorysError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredCategoryLoading,
    TResult? Function(Result result)? featuredCategorysLoaded,
    TResult? Function(String errorMsg)? featuredCategorysError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredCategoryLoading,
    TResult Function(Result result)? featuredCategorysLoaded,
    TResult Function(String errorMsg)? featuredCategorysError,
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
    required TResult Function(FeaturedCategoryLoading value)
        featuredCategoryLoading,
    required TResult Function(FeaturedCategoryLoaded value)
        featuredCategorysLoaded,
    required TResult Function(FeaturedCategoryError value)
        featuredCategorysError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult? Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult? Function(FeaturedCategoryError value)? featuredCategorysError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult Function(FeaturedCategoryError value)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeaturedCategoryListState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FeaturedCategoryLoadingCopyWith<$Res> {
  factory _$$FeaturedCategoryLoadingCopyWith(_$FeaturedCategoryLoading value,
          $Res Function(_$FeaturedCategoryLoading) then) =
      __$$FeaturedCategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedCategoryLoadingCopyWithImpl<$Res>
    extends _$FeaturedCategoryListStateCopyWithImpl<$Res,
        _$FeaturedCategoryLoading>
    implements _$$FeaturedCategoryLoadingCopyWith<$Res> {
  __$$FeaturedCategoryLoadingCopyWithImpl(_$FeaturedCategoryLoading _value,
      $Res Function(_$FeaturedCategoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeaturedCategoryLoading implements FeaturedCategoryLoading {
  const _$FeaturedCategoryLoading();

  @override
  String toString() {
    return 'FeaturedCategoryListState.featuredCategoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedCategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredCategoryLoading,
    required TResult Function(Result result) featuredCategorysLoaded,
    required TResult Function(String errorMsg) featuredCategorysError,
  }) {
    return featuredCategoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredCategoryLoading,
    TResult? Function(Result result)? featuredCategorysLoaded,
    TResult? Function(String errorMsg)? featuredCategorysError,
  }) {
    return featuredCategoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredCategoryLoading,
    TResult Function(Result result)? featuredCategorysLoaded,
    TResult Function(String errorMsg)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategoryLoading != null) {
      return featuredCategoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedCategoryLoading value)
        featuredCategoryLoading,
    required TResult Function(FeaturedCategoryLoaded value)
        featuredCategorysLoaded,
    required TResult Function(FeaturedCategoryError value)
        featuredCategorysError,
  }) {
    return featuredCategoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult? Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult? Function(FeaturedCategoryError value)? featuredCategorysError,
  }) {
    return featuredCategoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult Function(FeaturedCategoryError value)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategoryLoading != null) {
      return featuredCategoryLoading(this);
    }
    return orElse();
  }
}

abstract class FeaturedCategoryLoading implements FeaturedCategoryListState {
  const factory FeaturedCategoryLoading() = _$FeaturedCategoryLoading;
}

/// @nodoc
abstract class _$$FeaturedCategoryLoadedCopyWith<$Res> {
  factory _$$FeaturedCategoryLoadedCopyWith(_$FeaturedCategoryLoaded value,
          $Res Function(_$FeaturedCategoryLoaded) then) =
      __$$FeaturedCategoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$FeaturedCategoryLoadedCopyWithImpl<$Res>
    extends _$FeaturedCategoryListStateCopyWithImpl<$Res,
        _$FeaturedCategoryLoaded>
    implements _$$FeaturedCategoryLoadedCopyWith<$Res> {
  __$$FeaturedCategoryLoadedCopyWithImpl(_$FeaturedCategoryLoaded _value,
      $Res Function(_$FeaturedCategoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FeaturedCategoryLoaded(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$FeaturedCategoryLoaded implements FeaturedCategoryLoaded {
  const _$FeaturedCategoryLoaded(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'FeaturedCategoryListState.featuredCategorysLoaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedCategoryLoaded &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedCategoryLoadedCopyWith<_$FeaturedCategoryLoaded> get copyWith =>
      __$$FeaturedCategoryLoadedCopyWithImpl<_$FeaturedCategoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredCategoryLoading,
    required TResult Function(Result result) featuredCategorysLoaded,
    required TResult Function(String errorMsg) featuredCategorysError,
  }) {
    return featuredCategorysLoaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredCategoryLoading,
    TResult? Function(Result result)? featuredCategorysLoaded,
    TResult? Function(String errorMsg)? featuredCategorysError,
  }) {
    return featuredCategorysLoaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredCategoryLoading,
    TResult Function(Result result)? featuredCategorysLoaded,
    TResult Function(String errorMsg)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategorysLoaded != null) {
      return featuredCategorysLoaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedCategoryLoading value)
        featuredCategoryLoading,
    required TResult Function(FeaturedCategoryLoaded value)
        featuredCategorysLoaded,
    required TResult Function(FeaturedCategoryError value)
        featuredCategorysError,
  }) {
    return featuredCategorysLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult? Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult? Function(FeaturedCategoryError value)? featuredCategorysError,
  }) {
    return featuredCategorysLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult Function(FeaturedCategoryError value)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategorysLoaded != null) {
      return featuredCategorysLoaded(this);
    }
    return orElse();
  }
}

abstract class FeaturedCategoryLoaded implements FeaturedCategoryListState {
  const factory FeaturedCategoryLoaded(final Result result) =
      _$FeaturedCategoryLoaded;

  Result get result;
  @JsonKey(ignore: true)
  _$$FeaturedCategoryLoadedCopyWith<_$FeaturedCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedCategoryErrorCopyWith<$Res> {
  factory _$$FeaturedCategoryErrorCopyWith(_$FeaturedCategoryError value,
          $Res Function(_$FeaturedCategoryError) then) =
      __$$FeaturedCategoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$FeaturedCategoryErrorCopyWithImpl<$Res>
    extends _$FeaturedCategoryListStateCopyWithImpl<$Res,
        _$FeaturedCategoryError>
    implements _$$FeaturedCategoryErrorCopyWith<$Res> {
  __$$FeaturedCategoryErrorCopyWithImpl(_$FeaturedCategoryError _value,
      $Res Function(_$FeaturedCategoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$FeaturedCategoryError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeaturedCategoryError implements FeaturedCategoryError {
  const _$FeaturedCategoryError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'FeaturedCategoryListState.featuredCategorysError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedCategoryError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedCategoryErrorCopyWith<_$FeaturedCategoryError> get copyWith =>
      __$$FeaturedCategoryErrorCopyWithImpl<_$FeaturedCategoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredCategoryLoading,
    required TResult Function(Result result) featuredCategorysLoaded,
    required TResult Function(String errorMsg) featuredCategorysError,
  }) {
    return featuredCategorysError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredCategoryLoading,
    TResult? Function(Result result)? featuredCategorysLoaded,
    TResult? Function(String errorMsg)? featuredCategorysError,
  }) {
    return featuredCategorysError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredCategoryLoading,
    TResult Function(Result result)? featuredCategorysLoaded,
    TResult Function(String errorMsg)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategorysError != null) {
      return featuredCategorysError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedCategoryLoading value)
        featuredCategoryLoading,
    required TResult Function(FeaturedCategoryLoaded value)
        featuredCategorysLoaded,
    required TResult Function(FeaturedCategoryError value)
        featuredCategorysError,
  }) {
    return featuredCategorysError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult? Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult? Function(FeaturedCategoryError value)? featuredCategorysError,
  }) {
    return featuredCategorysError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedCategoryLoading value)? featuredCategoryLoading,
    TResult Function(FeaturedCategoryLoaded value)? featuredCategorysLoaded,
    TResult Function(FeaturedCategoryError value)? featuredCategorysError,
    required TResult orElse(),
  }) {
    if (featuredCategorysError != null) {
      return featuredCategorysError(this);
    }
    return orElse();
  }
}

abstract class FeaturedCategoryError implements FeaturedCategoryListState {
  const factory FeaturedCategoryError(final String errorMsg) =
      _$FeaturedCategoryError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$FeaturedCategoryErrorCopyWith<_$FeaturedCategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

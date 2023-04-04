// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startCategorySearch,
    required TResult Function() resetSearchCategoryState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startCategorySearch,
    TResult? Function()? resetSearchCategoryState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startCategorySearch,
    TResult Function()? resetSearchCategoryState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCategorySearch value) startCategorySearch,
    required TResult Function(ResetSearchCategoryState value)
        resetSearchCategoryState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCategorySearch value)? startCategorySearch,
    TResult? Function(ResetSearchCategoryState value)? resetSearchCategoryState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCategorySearch value)? startCategorySearch,
    TResult Function(ResetSearchCategoryState value)? resetSearchCategoryState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryEventCopyWith<$Res> {
  factory $SearchCategoryEventCopyWith(
          SearchCategoryEvent value, $Res Function(SearchCategoryEvent) then) =
      _$SearchCategoryEventCopyWithImpl<$Res, SearchCategoryEvent>;
}

/// @nodoc
class _$SearchCategoryEventCopyWithImpl<$Res, $Val extends SearchCategoryEvent>
    implements $SearchCategoryEventCopyWith<$Res> {
  _$SearchCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartCategorySearchCopyWith<$Res> {
  factory _$$StartCategorySearchCopyWith(_$StartCategorySearch value,
          $Res Function(_$StartCategorySearch) then) =
      __$$StartCategorySearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartCategorySearchCopyWithImpl<$Res>
    extends _$SearchCategoryEventCopyWithImpl<$Res, _$StartCategorySearch>
    implements _$$StartCategorySearchCopyWith<$Res> {
  __$$StartCategorySearchCopyWithImpl(
      _$StartCategorySearch _value, $Res Function(_$StartCategorySearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartCategorySearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartCategorySearch implements StartCategorySearch {
  const _$StartCategorySearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchCategoryEvent.startCategorySearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartCategorySearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartCategorySearchCopyWith<_$StartCategorySearch> get copyWith =>
      __$$StartCategorySearchCopyWithImpl<_$StartCategorySearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startCategorySearch,
    required TResult Function() resetSearchCategoryState,
  }) {
    return startCategorySearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startCategorySearch,
    TResult? Function()? resetSearchCategoryState,
  }) {
    return startCategorySearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startCategorySearch,
    TResult Function()? resetSearchCategoryState,
    required TResult orElse(),
  }) {
    if (startCategorySearch != null) {
      return startCategorySearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCategorySearch value) startCategorySearch,
    required TResult Function(ResetSearchCategoryState value)
        resetSearchCategoryState,
  }) {
    return startCategorySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCategorySearch value)? startCategorySearch,
    TResult? Function(ResetSearchCategoryState value)? resetSearchCategoryState,
  }) {
    return startCategorySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCategorySearch value)? startCategorySearch,
    TResult Function(ResetSearchCategoryState value)? resetSearchCategoryState,
    required TResult orElse(),
  }) {
    if (startCategorySearch != null) {
      return startCategorySearch(this);
    }
    return orElse();
  }
}

abstract class StartCategorySearch implements SearchCategoryEvent {
  const factory StartCategorySearch(final String query) = _$StartCategorySearch;

  String get query;
  @JsonKey(ignore: true)
  _$$StartCategorySearchCopyWith<_$StartCategorySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchCategoryStateCopyWith<$Res> {
  factory _$$ResetSearchCategoryStateCopyWith(_$ResetSearchCategoryState value,
          $Res Function(_$ResetSearchCategoryState) then) =
      __$$ResetSearchCategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchCategoryStateCopyWithImpl<$Res>
    extends _$SearchCategoryEventCopyWithImpl<$Res, _$ResetSearchCategoryState>
    implements _$$ResetSearchCategoryStateCopyWith<$Res> {
  __$$ResetSearchCategoryStateCopyWithImpl(_$ResetSearchCategoryState _value,
      $Res Function(_$ResetSearchCategoryState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSearchCategoryState implements ResetSearchCategoryState {
  const _$ResetSearchCategoryState();

  @override
  String toString() {
    return 'SearchCategoryEvent.resetSearchCategoryState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSearchCategoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startCategorySearch,
    required TResult Function() resetSearchCategoryState,
  }) {
    return resetSearchCategoryState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startCategorySearch,
    TResult? Function()? resetSearchCategoryState,
  }) {
    return resetSearchCategoryState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startCategorySearch,
    TResult Function()? resetSearchCategoryState,
    required TResult orElse(),
  }) {
    if (resetSearchCategoryState != null) {
      return resetSearchCategoryState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCategorySearch value) startCategorySearch,
    required TResult Function(ResetSearchCategoryState value)
        resetSearchCategoryState,
  }) {
    return resetSearchCategoryState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCategorySearch value)? startCategorySearch,
    TResult? Function(ResetSearchCategoryState value)? resetSearchCategoryState,
  }) {
    return resetSearchCategoryState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCategorySearch value)? startCategorySearch,
    TResult Function(ResetSearchCategoryState value)? resetSearchCategoryState,
    required TResult orElse(),
  }) {
    if (resetSearchCategoryState != null) {
      return resetSearchCategoryState(this);
    }
    return orElse();
  }
}

abstract class ResetSearchCategoryState implements SearchCategoryEvent {
  const factory ResetSearchCategoryState() = _$ResetSearchCategoryState;
}

/// @nodoc
mixin _$SearchCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> data) searchCategoryLoaded,
    required TResult Function() searchCategoryLoading,
    required TResult Function(String errorMsg) searchCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult? Function()? searchCategoryLoading,
    TResult? Function(String errorMsg)? searchCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult Function()? searchCategoryLoading,
    TResult Function(String errorMsg)? searchCategoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchCategoryLoaded value) searchCategoryLoaded,
    required TResult Function(SearchCategoryLoading value)
        searchCategoryLoading,
    required TResult Function(SearchCategoryError value) searchCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult? Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult? Function(SearchCategoryError value)? searchCategoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult Function(SearchCategoryError value)? searchCategoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryStateCopyWith<$Res> {
  factory $SearchCategoryStateCopyWith(
          SearchCategoryState value, $Res Function(SearchCategoryState) then) =
      _$SearchCategoryStateCopyWithImpl<$Res, SearchCategoryState>;
}

/// @nodoc
class _$SearchCategoryStateCopyWithImpl<$Res, $Val extends SearchCategoryState>
    implements $SearchCategoryStateCopyWith<$Res> {
  _$SearchCategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchCategoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchCategoryState.initial()';
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
    required TResult Function(List<CategoryModel> data) searchCategoryLoaded,
    required TResult Function() searchCategoryLoading,
    required TResult Function(String errorMsg) searchCategoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult? Function()? searchCategoryLoading,
    TResult? Function(String errorMsg)? searchCategoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult Function()? searchCategoryLoading,
    TResult Function(String errorMsg)? searchCategoryError,
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
    required TResult Function(SearchCategoryLoaded value) searchCategoryLoaded,
    required TResult Function(SearchCategoryLoading value)
        searchCategoryLoading,
    required TResult Function(SearchCategoryError value) searchCategoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult? Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult? Function(SearchCategoryError value)? searchCategoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult Function(SearchCategoryError value)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchCategoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SearchCategoryLoadedCopyWith<$Res> {
  factory _$$SearchCategoryLoadedCopyWith(_$SearchCategoryLoaded value,
          $Res Function(_$SearchCategoryLoaded) then) =
      __$$SearchCategoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$$SearchCategoryLoadedCopyWithImpl<$Res>
    extends _$SearchCategoryStateCopyWithImpl<$Res, _$SearchCategoryLoaded>
    implements _$$SearchCategoryLoadedCopyWith<$Res> {
  __$$SearchCategoryLoadedCopyWithImpl(_$SearchCategoryLoaded _value,
      $Res Function(_$SearchCategoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchCategoryLoaded(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$SearchCategoryLoaded implements SearchCategoryLoaded {
  const _$SearchCategoryLoaded(final List<CategoryModel> data) : _data = data;

  final List<CategoryModel> _data;
  @override
  List<CategoryModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchCategoryState.searchCategoryLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryLoadedCopyWith<_$SearchCategoryLoaded> get copyWith =>
      __$$SearchCategoryLoadedCopyWithImpl<_$SearchCategoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> data) searchCategoryLoaded,
    required TResult Function() searchCategoryLoading,
    required TResult Function(String errorMsg) searchCategoryError,
  }) {
    return searchCategoryLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult? Function()? searchCategoryLoading,
    TResult? Function(String errorMsg)? searchCategoryError,
  }) {
    return searchCategoryLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult Function()? searchCategoryLoading,
    TResult Function(String errorMsg)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryLoaded != null) {
      return searchCategoryLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchCategoryLoaded value) searchCategoryLoaded,
    required TResult Function(SearchCategoryLoading value)
        searchCategoryLoading,
    required TResult Function(SearchCategoryError value) searchCategoryError,
  }) {
    return searchCategoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult? Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult? Function(SearchCategoryError value)? searchCategoryError,
  }) {
    return searchCategoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult Function(SearchCategoryError value)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryLoaded != null) {
      return searchCategoryLoaded(this);
    }
    return orElse();
  }
}

abstract class SearchCategoryLoaded implements SearchCategoryState {
  const factory SearchCategoryLoaded(final List<CategoryModel> data) =
      _$SearchCategoryLoaded;

  List<CategoryModel> get data;
  @JsonKey(ignore: true)
  _$$SearchCategoryLoadedCopyWith<_$SearchCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCategoryLoadingCopyWith<$Res> {
  factory _$$SearchCategoryLoadingCopyWith(_$SearchCategoryLoading value,
          $Res Function(_$SearchCategoryLoading) then) =
      __$$SearchCategoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchCategoryLoadingCopyWithImpl<$Res>
    extends _$SearchCategoryStateCopyWithImpl<$Res, _$SearchCategoryLoading>
    implements _$$SearchCategoryLoadingCopyWith<$Res> {
  __$$SearchCategoryLoadingCopyWithImpl(_$SearchCategoryLoading _value,
      $Res Function(_$SearchCategoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchCategoryLoading implements SearchCategoryLoading {
  const _$SearchCategoryLoading();

  @override
  String toString() {
    return 'SearchCategoryState.searchCategoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchCategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> data) searchCategoryLoaded,
    required TResult Function() searchCategoryLoading,
    required TResult Function(String errorMsg) searchCategoryError,
  }) {
    return searchCategoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult? Function()? searchCategoryLoading,
    TResult? Function(String errorMsg)? searchCategoryError,
  }) {
    return searchCategoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult Function()? searchCategoryLoading,
    TResult Function(String errorMsg)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryLoading != null) {
      return searchCategoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchCategoryLoaded value) searchCategoryLoaded,
    required TResult Function(SearchCategoryLoading value)
        searchCategoryLoading,
    required TResult Function(SearchCategoryError value) searchCategoryError,
  }) {
    return searchCategoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult? Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult? Function(SearchCategoryError value)? searchCategoryError,
  }) {
    return searchCategoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult Function(SearchCategoryError value)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryLoading != null) {
      return searchCategoryLoading(this);
    }
    return orElse();
  }
}

abstract class SearchCategoryLoading implements SearchCategoryState {
  const factory SearchCategoryLoading() = _$SearchCategoryLoading;
}

/// @nodoc
abstract class _$$SearchCategoryErrorCopyWith<$Res> {
  factory _$$SearchCategoryErrorCopyWith(_$SearchCategoryError value,
          $Res Function(_$SearchCategoryError) then) =
      __$$SearchCategoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$SearchCategoryErrorCopyWithImpl<$Res>
    extends _$SearchCategoryStateCopyWithImpl<$Res, _$SearchCategoryError>
    implements _$$SearchCategoryErrorCopyWith<$Res> {
  __$$SearchCategoryErrorCopyWithImpl(
      _$SearchCategoryError _value, $Res Function(_$SearchCategoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$SearchCategoryError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCategoryError implements SearchCategoryError {
  const _$SearchCategoryError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'SearchCategoryState.searchCategoryError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryErrorCopyWith<_$SearchCategoryError> get copyWith =>
      __$$SearchCategoryErrorCopyWithImpl<_$SearchCategoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> data) searchCategoryLoaded,
    required TResult Function() searchCategoryLoading,
    required TResult Function(String errorMsg) searchCategoryError,
  }) {
    return searchCategoryError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult? Function()? searchCategoryLoading,
    TResult? Function(String errorMsg)? searchCategoryError,
  }) {
    return searchCategoryError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> data)? searchCategoryLoaded,
    TResult Function()? searchCategoryLoading,
    TResult Function(String errorMsg)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryError != null) {
      return searchCategoryError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchCategoryLoaded value) searchCategoryLoaded,
    required TResult Function(SearchCategoryLoading value)
        searchCategoryLoading,
    required TResult Function(SearchCategoryError value) searchCategoryError,
  }) {
    return searchCategoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult? Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult? Function(SearchCategoryError value)? searchCategoryError,
  }) {
    return searchCategoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchCategoryLoaded value)? searchCategoryLoaded,
    TResult Function(SearchCategoryLoading value)? searchCategoryLoading,
    TResult Function(SearchCategoryError value)? searchCategoryError,
    required TResult orElse(),
  }) {
    if (searchCategoryError != null) {
      return searchCategoryError(this);
    }
    return orElse();
  }
}

abstract class SearchCategoryError implements SearchCategoryState {
  const factory SearchCategoryError(final String errorMsg) =
      _$SearchCategoryError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$SearchCategoryErrorCopyWith<_$SearchCategoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startProductSearch,
    required TResult Function(String query) startProductSearchNextPage,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startProductSearch,
    TResult? Function(String query)? startProductSearchNextPage,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startProductSearch,
    TResult Function(String query)? startProductSearchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartProductSearch value) startProductSearch,
    required TResult Function(StartProductSearchNextPage value)
        startProductSearchNextPage,
    required TResult Function(ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartProductSearch value)? startProductSearch,
    TResult? Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartProductSearch value)? startProductSearch,
    TResult Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductEventCopyWith<$Res> {
  factory $SearchProductEventCopyWith(
          SearchProductEvent value, $Res Function(SearchProductEvent) then) =
      _$SearchProductEventCopyWithImpl<$Res, SearchProductEvent>;
}

/// @nodoc
class _$SearchProductEventCopyWithImpl<$Res, $Val extends SearchProductEvent>
    implements $SearchProductEventCopyWith<$Res> {
  _$SearchProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartProductSearchCopyWith<$Res> {
  factory _$$StartProductSearchCopyWith(_$StartProductSearch value,
          $Res Function(_$StartProductSearch) then) =
      __$$StartProductSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartProductSearchCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$StartProductSearch>
    implements _$$StartProductSearchCopyWith<$Res> {
  __$$StartProductSearchCopyWithImpl(
      _$StartProductSearch _value, $Res Function(_$StartProductSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartProductSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartProductSearch implements StartProductSearch {
  const _$StartProductSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProductEvent.startProductSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartProductSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartProductSearchCopyWith<_$StartProductSearch> get copyWith =>
      __$$StartProductSearchCopyWithImpl<_$StartProductSearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startProductSearch,
    required TResult Function(String query) startProductSearchNextPage,
    required TResult Function() resetState,
  }) {
    return startProductSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startProductSearch,
    TResult? Function(String query)? startProductSearchNextPage,
    TResult? Function()? resetState,
  }) {
    return startProductSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startProductSearch,
    TResult Function(String query)? startProductSearchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (startProductSearch != null) {
      return startProductSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartProductSearch value) startProductSearch,
    required TResult Function(StartProductSearchNextPage value)
        startProductSearchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return startProductSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartProductSearch value)? startProductSearch,
    TResult? Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return startProductSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartProductSearch value)? startProductSearch,
    TResult Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (startProductSearch != null) {
      return startProductSearch(this);
    }
    return orElse();
  }
}

abstract class StartProductSearch implements SearchProductEvent {
  const factory StartProductSearch(final String query) = _$StartProductSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$StartProductSearchCopyWith<_$StartProductSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartProductSearchNextPageCopyWith<$Res> {
  factory _$$StartProductSearchNextPageCopyWith(
          _$StartProductSearchNextPage value,
          $Res Function(_$StartProductSearchNextPage) then) =
      __$$StartProductSearchNextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartProductSearchNextPageCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$StartProductSearchNextPage>
    implements _$$StartProductSearchNextPageCopyWith<$Res> {
  __$$StartProductSearchNextPageCopyWithImpl(
      _$StartProductSearchNextPage _value,
      $Res Function(_$StartProductSearchNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartProductSearchNextPage(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartProductSearchNextPage implements StartProductSearchNextPage {
  const _$StartProductSearchNextPage(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchProductEvent.startProductSearchNextPage(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartProductSearchNextPage &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartProductSearchNextPageCopyWith<_$StartProductSearchNextPage>
      get copyWith => __$$StartProductSearchNextPageCopyWithImpl<
          _$StartProductSearchNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startProductSearch,
    required TResult Function(String query) startProductSearchNextPage,
    required TResult Function() resetState,
  }) {
    return startProductSearchNextPage(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startProductSearch,
    TResult? Function(String query)? startProductSearchNextPage,
    TResult? Function()? resetState,
  }) {
    return startProductSearchNextPage?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startProductSearch,
    TResult Function(String query)? startProductSearchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (startProductSearchNextPage != null) {
      return startProductSearchNextPage(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartProductSearch value) startProductSearch,
    required TResult Function(StartProductSearchNextPage value)
        startProductSearchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return startProductSearchNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartProductSearch value)? startProductSearch,
    TResult? Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return startProductSearchNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartProductSearch value)? startProductSearch,
    TResult Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (startProductSearchNextPage != null) {
      return startProductSearchNextPage(this);
    }
    return orElse();
  }
}

abstract class StartProductSearchNextPage implements SearchProductEvent {
  const factory StartProductSearchNextPage(final String query) =
      _$StartProductSearchNextPage;

  String get query;
  @JsonKey(ignore: true)
  _$$StartProductSearchNextPageCopyWith<_$StartProductSearchNextPage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateCopyWith<$Res> {
  factory _$$ResetStateCopyWith(
          _$ResetState value, $Res Function(_$ResetState) then) =
      __$$ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$ResetState>
    implements _$$ResetStateCopyWith<$Res> {
  __$$ResetStateCopyWithImpl(
      _$ResetState _value, $Res Function(_$ResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetState implements ResetState {
  const _$ResetState();

  @override
  String toString() {
    return 'SearchProductEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startProductSearch,
    required TResult Function(String query) startProductSearchNextPage,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startProductSearch,
    TResult? Function(String query)? startProductSearchNextPage,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startProductSearch,
    TResult Function(String query)? startProductSearchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartProductSearch value) startProductSearch,
    required TResult Function(StartProductSearchNextPage value)
        startProductSearchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartProductSearch value)? startProductSearch,
    TResult? Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartProductSearch value)? startProductSearch,
    TResult Function(StartProductSearchNextPage value)?
        startProductSearchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements SearchProductEvent {
  const factory ResetState() = _$ResetState;
}

/// @nodoc
mixin _$SearchProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductModel> data) searchProductLoaded,
    required TResult Function() searchProductLoading,
    required TResult Function(String errorMsg) searchProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductModel> data)? searchProductLoaded,
    TResult? Function()? searchProductLoading,
    TResult? Function(String errorMsg)? searchProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductModel> data)? searchProductLoaded,
    TResult Function()? searchProductLoading,
    TResult Function(String errorMsg)? searchProductError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchProductLoaded value) searchProductLoaded,
    required TResult Function(SearchProductLoading value) searchProductLoading,
    required TResult Function(SearchProductError value) searchProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchProductLoaded value)? searchProductLoaded,
    TResult? Function(SearchProductLoading value)? searchProductLoading,
    TResult? Function(SearchProductError value)? searchProductError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchProductLoaded value)? searchProductLoaded,
    TResult Function(SearchProductLoading value)? searchProductLoading,
    TResult Function(SearchProductError value)? searchProductError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res, SearchProductState>;
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res, $Val extends SearchProductState>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchProductStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchProductState.initial()';
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
    required TResult Function(List<ProductModel> data) searchProductLoaded,
    required TResult Function() searchProductLoading,
    required TResult Function(String errorMsg) searchProductError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductModel> data)? searchProductLoaded,
    TResult? Function()? searchProductLoading,
    TResult? Function(String errorMsg)? searchProductError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductModel> data)? searchProductLoaded,
    TResult Function()? searchProductLoading,
    TResult Function(String errorMsg)? searchProductError,
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
    required TResult Function(SearchProductLoaded value) searchProductLoaded,
    required TResult Function(SearchProductLoading value) searchProductLoading,
    required TResult Function(SearchProductError value) searchProductError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchProductLoaded value)? searchProductLoaded,
    TResult? Function(SearchProductLoading value)? searchProductLoading,
    TResult? Function(SearchProductError value)? searchProductError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchProductLoaded value)? searchProductLoaded,
    TResult Function(SearchProductLoading value)? searchProductLoading,
    TResult Function(SearchProductError value)? searchProductError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchProductState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SearchProductLoadedCopyWith<$Res> {
  factory _$$SearchProductLoadedCopyWith(_$SearchProductLoaded value,
          $Res Function(_$SearchProductLoaded) then) =
      __$$SearchProductLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> data});
}

/// @nodoc
class __$$SearchProductLoadedCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductLoaded>
    implements _$$SearchProductLoadedCopyWith<$Res> {
  __$$SearchProductLoadedCopyWithImpl(
      _$SearchProductLoaded _value, $Res Function(_$SearchProductLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchProductLoaded(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SearchProductLoaded implements SearchProductLoaded {
  const _$SearchProductLoaded(final List<ProductModel> data) : _data = data;

  final List<ProductModel> _data;
  @override
  List<ProductModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchProductState.searchProductLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductLoadedCopyWith<_$SearchProductLoaded> get copyWith =>
      __$$SearchProductLoadedCopyWithImpl<_$SearchProductLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductModel> data) searchProductLoaded,
    required TResult Function() searchProductLoading,
    required TResult Function(String errorMsg) searchProductError,
  }) {
    return searchProductLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductModel> data)? searchProductLoaded,
    TResult? Function()? searchProductLoading,
    TResult? Function(String errorMsg)? searchProductError,
  }) {
    return searchProductLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductModel> data)? searchProductLoaded,
    TResult Function()? searchProductLoading,
    TResult Function(String errorMsg)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductLoaded != null) {
      return searchProductLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchProductLoaded value) searchProductLoaded,
    required TResult Function(SearchProductLoading value) searchProductLoading,
    required TResult Function(SearchProductError value) searchProductError,
  }) {
    return searchProductLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchProductLoaded value)? searchProductLoaded,
    TResult? Function(SearchProductLoading value)? searchProductLoading,
    TResult? Function(SearchProductError value)? searchProductError,
  }) {
    return searchProductLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchProductLoaded value)? searchProductLoaded,
    TResult Function(SearchProductLoading value)? searchProductLoading,
    TResult Function(SearchProductError value)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductLoaded != null) {
      return searchProductLoaded(this);
    }
    return orElse();
  }
}

abstract class SearchProductLoaded implements SearchProductState {
  const factory SearchProductLoaded(final List<ProductModel> data) =
      _$SearchProductLoaded;

  List<ProductModel> get data;
  @JsonKey(ignore: true)
  _$$SearchProductLoadedCopyWith<_$SearchProductLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductLoadingCopyWith<$Res> {
  factory _$$SearchProductLoadingCopyWith(_$SearchProductLoading value,
          $Res Function(_$SearchProductLoading) then) =
      __$$SearchProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchProductLoadingCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductLoading>
    implements _$$SearchProductLoadingCopyWith<$Res> {
  __$$SearchProductLoadingCopyWithImpl(_$SearchProductLoading _value,
      $Res Function(_$SearchProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchProductLoading implements SearchProductLoading {
  const _$SearchProductLoading();

  @override
  String toString() {
    return 'SearchProductState.searchProductLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductModel> data) searchProductLoaded,
    required TResult Function() searchProductLoading,
    required TResult Function(String errorMsg) searchProductError,
  }) {
    return searchProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductModel> data)? searchProductLoaded,
    TResult? Function()? searchProductLoading,
    TResult? Function(String errorMsg)? searchProductError,
  }) {
    return searchProductLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductModel> data)? searchProductLoaded,
    TResult Function()? searchProductLoading,
    TResult Function(String errorMsg)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductLoading != null) {
      return searchProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchProductLoaded value) searchProductLoaded,
    required TResult Function(SearchProductLoading value) searchProductLoading,
    required TResult Function(SearchProductError value) searchProductError,
  }) {
    return searchProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchProductLoaded value)? searchProductLoaded,
    TResult? Function(SearchProductLoading value)? searchProductLoading,
    TResult? Function(SearchProductError value)? searchProductError,
  }) {
    return searchProductLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchProductLoaded value)? searchProductLoaded,
    TResult Function(SearchProductLoading value)? searchProductLoading,
    TResult Function(SearchProductError value)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductLoading != null) {
      return searchProductLoading(this);
    }
    return orElse();
  }
}

abstract class SearchProductLoading implements SearchProductState {
  const factory SearchProductLoading() = _$SearchProductLoading;
}

/// @nodoc
abstract class _$$SearchProductErrorCopyWith<$Res> {
  factory _$$SearchProductErrorCopyWith(_$SearchProductError value,
          $Res Function(_$SearchProductError) then) =
      __$$SearchProductErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$SearchProductErrorCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductError>
    implements _$$SearchProductErrorCopyWith<$Res> {
  __$$SearchProductErrorCopyWithImpl(
      _$SearchProductError _value, $Res Function(_$SearchProductError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$SearchProductError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductError implements SearchProductError {
  const _$SearchProductError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'SearchProductState.searchProductError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductErrorCopyWith<_$SearchProductError> get copyWith =>
      __$$SearchProductErrorCopyWithImpl<_$SearchProductError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductModel> data) searchProductLoaded,
    required TResult Function() searchProductLoading,
    required TResult Function(String errorMsg) searchProductError,
  }) {
    return searchProductError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductModel> data)? searchProductLoaded,
    TResult? Function()? searchProductLoading,
    TResult? Function(String errorMsg)? searchProductError,
  }) {
    return searchProductError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductModel> data)? searchProductLoaded,
    TResult Function()? searchProductLoading,
    TResult Function(String errorMsg)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductError != null) {
      return searchProductError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchProductLoaded value) searchProductLoaded,
    required TResult Function(SearchProductLoading value) searchProductLoading,
    required TResult Function(SearchProductError value) searchProductError,
  }) {
    return searchProductError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SearchProductLoaded value)? searchProductLoaded,
    TResult? Function(SearchProductLoading value)? searchProductLoading,
    TResult? Function(SearchProductError value)? searchProductError,
  }) {
    return searchProductError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchProductLoaded value)? searchProductLoaded,
    TResult Function(SearchProductLoading value)? searchProductLoading,
    TResult Function(SearchProductError value)? searchProductError,
    required TResult orElse(),
  }) {
    if (searchProductError != null) {
      return searchProductError(this);
    }
    return orElse();
  }
}

abstract class SearchProductError implements SearchProductState {
  const factory SearchProductError(final String errorMsg) =
      _$SearchProductError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$SearchProductErrorCopyWith<_$SearchProductError> get copyWith =>
      throw _privateConstructorUsedError;
}

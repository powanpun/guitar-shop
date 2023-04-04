// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAddress,
    required TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)
        addUserAddress,
    required TResult Function(
            int id, String city, String street, String street2, String type)
        updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAddress,
    TResult? Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult? Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAddress,
    TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserAddress value) getUserAddress,
    required TResult Function(AddUserAddress value) addUserAddress,
    required TResult Function(UpdateUserAddress value) updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserAddress value)? getUserAddress,
    TResult? Function(AddUserAddress value)? addUserAddress,
    TResult? Function(UpdateUserAddress value)? updateUserAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserAddress value)? getUserAddress,
    TResult Function(AddUserAddress value)? addUserAddress,
    TResult Function(UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressEventCopyWith<$Res> {
  factory $UserAddressEventCopyWith(
          UserAddressEvent value, $Res Function(UserAddressEvent) then) =
      _$UserAddressEventCopyWithImpl<$Res, UserAddressEvent>;
}

/// @nodoc
class _$UserAddressEventCopyWithImpl<$Res, $Val extends UserAddressEvent>
    implements $UserAddressEventCopyWith<$Res> {
  _$UserAddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserAddressCopyWith<$Res> {
  factory _$$GetUserAddressCopyWith(
          _$GetUserAddress value, $Res Function(_$GetUserAddress) then) =
      __$$GetUserAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserAddressCopyWithImpl<$Res>
    extends _$UserAddressEventCopyWithImpl<$Res, _$GetUserAddress>
    implements _$$GetUserAddressCopyWith<$Res> {
  __$$GetUserAddressCopyWithImpl(
      _$GetUserAddress _value, $Res Function(_$GetUserAddress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserAddress implements GetUserAddress {
  const _$GetUserAddress();

  @override
  String toString() {
    return 'UserAddressEvent.getUserAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAddress,
    required TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)
        addUserAddress,
    required TResult Function(
            int id, String city, String street, String street2, String type)
        updateUserAddress,
  }) {
    return getUserAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAddress,
    TResult? Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult? Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
  }) {
    return getUserAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAddress,
    TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (getUserAddress != null) {
      return getUserAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserAddress value) getUserAddress,
    required TResult Function(AddUserAddress value) addUserAddress,
    required TResult Function(UpdateUserAddress value) updateUserAddress,
  }) {
    return getUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserAddress value)? getUserAddress,
    TResult? Function(AddUserAddress value)? addUserAddress,
    TResult? Function(UpdateUserAddress value)? updateUserAddress,
  }) {
    return getUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserAddress value)? getUserAddress,
    TResult Function(AddUserAddress value)? addUserAddress,
    TResult Function(UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (getUserAddress != null) {
      return getUserAddress(this);
    }
    return orElse();
  }
}

abstract class GetUserAddress implements UserAddressEvent {
  const factory GetUserAddress() = _$GetUserAddress;
}

/// @nodoc
abstract class _$$AddUserAddressCopyWith<$Res> {
  factory _$$AddUserAddressCopyWith(
          _$AddUserAddress value, $Res Function(_$AddUserAddress) then) =
      __$$AddUserAddressCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String city,
      String street,
      String street2,
      String invoiceCity,
      String invoiceStreet,
      String invoiceStreet2});
}

/// @nodoc
class __$$AddUserAddressCopyWithImpl<$Res>
    extends _$UserAddressEventCopyWithImpl<$Res, _$AddUserAddress>
    implements _$$AddUserAddressCopyWith<$Res> {
  __$$AddUserAddressCopyWithImpl(
      _$AddUserAddress _value, $Res Function(_$AddUserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
    Object? invoiceCity = null,
    Object? invoiceStreet = null,
    Object? invoiceStreet2 = null,
  }) {
    return _then(_$AddUserAddress(
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      null == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String,
      null == invoiceCity
          ? _value.invoiceCity
          : invoiceCity // ignore: cast_nullable_to_non_nullable
              as String,
      null == invoiceStreet
          ? _value.invoiceStreet
          : invoiceStreet // ignore: cast_nullable_to_non_nullable
              as String,
      null == invoiceStreet2
          ? _value.invoiceStreet2
          : invoiceStreet2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddUserAddress implements AddUserAddress {
  const _$AddUserAddress(this.city, this.street, this.street2, this.invoiceCity,
      this.invoiceStreet, this.invoiceStreet2);

  @override
  final String city;
  @override
  final String street;
  @override
  final String street2;
  @override
  final String invoiceCity;
  @override
  final String invoiceStreet;
  @override
  final String invoiceStreet2;

  @override
  String toString() {
    return 'UserAddressEvent.addUserAddress(city: $city, street: $street, street2: $street2, invoiceCity: $invoiceCity, invoiceStreet: $invoiceStreet, invoiceStreet2: $invoiceStreet2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserAddress &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.street2, street2) || other.street2 == street2) &&
            (identical(other.invoiceCity, invoiceCity) ||
                other.invoiceCity == invoiceCity) &&
            (identical(other.invoiceStreet, invoiceStreet) ||
                other.invoiceStreet == invoiceStreet) &&
            (identical(other.invoiceStreet2, invoiceStreet2) ||
                other.invoiceStreet2 == invoiceStreet2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, street, street2,
      invoiceCity, invoiceStreet, invoiceStreet2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserAddressCopyWith<_$AddUserAddress> get copyWith =>
      __$$AddUserAddressCopyWithImpl<_$AddUserAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAddress,
    required TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)
        addUserAddress,
    required TResult Function(
            int id, String city, String street, String street2, String type)
        updateUserAddress,
  }) {
    return addUserAddress(
        city, street, street2, invoiceCity, invoiceStreet, invoiceStreet2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAddress,
    TResult? Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult? Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
  }) {
    return addUserAddress?.call(
        city, street, street2, invoiceCity, invoiceStreet, invoiceStreet2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAddress,
    TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (addUserAddress != null) {
      return addUserAddress(
          city, street, street2, invoiceCity, invoiceStreet, invoiceStreet2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserAddress value) getUserAddress,
    required TResult Function(AddUserAddress value) addUserAddress,
    required TResult Function(UpdateUserAddress value) updateUserAddress,
  }) {
    return addUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserAddress value)? getUserAddress,
    TResult? Function(AddUserAddress value)? addUserAddress,
    TResult? Function(UpdateUserAddress value)? updateUserAddress,
  }) {
    return addUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserAddress value)? getUserAddress,
    TResult Function(AddUserAddress value)? addUserAddress,
    TResult Function(UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (addUserAddress != null) {
      return addUserAddress(this);
    }
    return orElse();
  }
}

abstract class AddUserAddress implements UserAddressEvent {
  const factory AddUserAddress(
      final String city,
      final String street,
      final String street2,
      final String invoiceCity,
      final String invoiceStreet,
      final String invoiceStreet2) = _$AddUserAddress;

  String get city;
  String get street;
  String get street2;
  String get invoiceCity;
  String get invoiceStreet;
  String get invoiceStreet2;
  @JsonKey(ignore: true)
  _$$AddUserAddressCopyWith<_$AddUserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserAddressCopyWith<$Res> {
  factory _$$UpdateUserAddressCopyWith(
          _$UpdateUserAddress value, $Res Function(_$UpdateUserAddress) then) =
      __$$UpdateUserAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String city, String street, String street2, String type});
}

/// @nodoc
class __$$UpdateUserAddressCopyWithImpl<$Res>
    extends _$UserAddressEventCopyWithImpl<$Res, _$UpdateUserAddress>
    implements _$$UpdateUserAddressCopyWith<$Res> {
  __$$UpdateUserAddressCopyWithImpl(
      _$UpdateUserAddress _value, $Res Function(_$UpdateUserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
    Object? type = null,
  }) {
    return _then(_$UpdateUserAddress(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      null == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserAddress implements UpdateUserAddress {
  const _$UpdateUserAddress(
      this.id, this.city, this.street, this.street2, this.type);

  @override
  final int id;
  @override
  final String city;
  @override
  final String street;
  @override
  final String street2;
  @override
  final String type;

  @override
  String toString() {
    return 'UserAddressEvent.updateUserAddress(id: $id, city: $city, street: $street, street2: $street2, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.street2, street2) || other.street2 == street2) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, city, street, street2, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserAddressCopyWith<_$UpdateUserAddress> get copyWith =>
      __$$UpdateUserAddressCopyWithImpl<_$UpdateUserAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAddress,
    required TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)
        addUserAddress,
    required TResult Function(
            int id, String city, String street, String street2, String type)
        updateUserAddress,
  }) {
    return updateUserAddress(id, city, street, street2, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAddress,
    TResult? Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult? Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
  }) {
    return updateUserAddress?.call(id, city, street, street2, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAddress,
    TResult Function(String city, String street, String street2,
            String invoiceCity, String invoiceStreet, String invoiceStreet2)?
        addUserAddress,
    TResult Function(
            int id, String city, String street, String street2, String type)?
        updateUserAddress,
    required TResult orElse(),
  }) {
    if (updateUserAddress != null) {
      return updateUserAddress(id, city, street, street2, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserAddress value) getUserAddress,
    required TResult Function(AddUserAddress value) addUserAddress,
    required TResult Function(UpdateUserAddress value) updateUserAddress,
  }) {
    return updateUserAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserAddress value)? getUserAddress,
    TResult? Function(AddUserAddress value)? addUserAddress,
    TResult? Function(UpdateUserAddress value)? updateUserAddress,
  }) {
    return updateUserAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserAddress value)? getUserAddress,
    TResult Function(AddUserAddress value)? addUserAddress,
    TResult Function(UpdateUserAddress value)? updateUserAddress,
    required TResult orElse(),
  }) {
    if (updateUserAddress != null) {
      return updateUserAddress(this);
    }
    return orElse();
  }
}

abstract class UpdateUserAddress implements UserAddressEvent {
  const factory UpdateUserAddress(
      final int id,
      final String city,
      final String street,
      final String street2,
      final String type) = _$UpdateUserAddress;

  int get id;
  String get city;
  String get street;
  String get street2;
  String get type;
  @JsonKey(ignore: true)
  _$$UpdateUserAddressCopyWith<_$UpdateUserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressStateCopyWith<$Res> {
  factory $UserAddressStateCopyWith(
          UserAddressState value, $Res Function(UserAddressState) then) =
      _$UserAddressStateCopyWithImpl<$Res, UserAddressState>;
}

/// @nodoc
class _$UserAddressStateCopyWithImpl<$Res, $Val extends UserAddressState>
    implements $UserAddressStateCopyWith<$Res> {
  _$UserAddressStateCopyWithImpl(this._value, this._then);

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
    extends _$UserAddressStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UserAddressState.initial()';
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
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
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
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserAddressState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$UserAddressLoadingCopyWith<$Res> {
  factory _$$UserAddressLoadingCopyWith(_$UserAddressLoading value,
          $Res Function(_$UserAddressLoading) then) =
      __$$UserAddressLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAddressLoadingCopyWithImpl<$Res>
    extends _$UserAddressStateCopyWithImpl<$Res, _$UserAddressLoading>
    implements _$$UserAddressLoadingCopyWith<$Res> {
  __$$UserAddressLoadingCopyWithImpl(
      _$UserAddressLoading _value, $Res Function(_$UserAddressLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAddressLoading implements UserAddressLoading {
  const _$UserAddressLoading();

  @override
  String toString() {
    return 'UserAddressState.userAddressLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAddressLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return userAddressLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return userAddressLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoading != null) {
      return userAddressLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return userAddressLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return userAddressLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoading != null) {
      return userAddressLoading(this);
    }
    return orElse();
  }
}

abstract class UserAddressLoading implements UserAddressState {
  const factory UserAddressLoading() = _$UserAddressLoading;
}

/// @nodoc
abstract class _$$UserAddressLoadedCopyWith<$Res> {
  factory _$$UserAddressLoadedCopyWith(
          _$UserAddressLoaded value, $Res Function(_$UserAddressLoaded) then) =
      __$$UserAddressLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddressModel> addressModel});
}

/// @nodoc
class __$$UserAddressLoadedCopyWithImpl<$Res>
    extends _$UserAddressStateCopyWithImpl<$Res, _$UserAddressLoaded>
    implements _$$UserAddressLoadedCopyWith<$Res> {
  __$$UserAddressLoadedCopyWithImpl(
      _$UserAddressLoaded _value, $Res Function(_$UserAddressLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
  }) {
    return _then(_$UserAddressLoaded(
      null == addressModel
          ? _value._addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$UserAddressLoaded implements UserAddressLoaded {
  const _$UserAddressLoaded(final List<AddressModel> addressModel)
      : _addressModel = addressModel;

  final List<AddressModel> _addressModel;
  @override
  List<AddressModel> get addressModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressModel);
  }

  @override
  String toString() {
    return 'UserAddressState.userAddressLoaded(addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressLoaded &&
            const DeepCollectionEquality()
                .equals(other._addressModel, _addressModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressLoadedCopyWith<_$UserAddressLoaded> get copyWith =>
      __$$UserAddressLoadedCopyWithImpl<_$UserAddressLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return userAddressLoaded(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return userAddressLoaded?.call(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoaded != null) {
      return userAddressLoaded(addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return userAddressLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return userAddressLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoaded != null) {
      return userAddressLoaded(this);
    }
    return orElse();
  }
}

abstract class UserAddressLoaded implements UserAddressState {
  const factory UserAddressLoaded(final List<AddressModel> addressModel) =
      _$UserAddressLoaded;

  List<AddressModel> get addressModel;
  @JsonKey(ignore: true)
  _$$UserAddressLoadedCopyWith<_$UserAddressLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddressLoadErrorCopyWith<$Res> {
  factory _$$UserAddressLoadErrorCopyWith(_$UserAddressLoadError value,
          $Res Function(_$UserAddressLoadError) then) =
      __$$UserAddressLoadErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$UserAddressLoadErrorCopyWithImpl<$Res>
    extends _$UserAddressStateCopyWithImpl<$Res, _$UserAddressLoadError>
    implements _$$UserAddressLoadErrorCopyWith<$Res> {
  __$$UserAddressLoadErrorCopyWithImpl(_$UserAddressLoadError _value,
      $Res Function(_$UserAddressLoadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$UserAddressLoadError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAddressLoadError implements UserAddressLoadError {
  const _$UserAddressLoadError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserAddressState.userAddressLoadError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressLoadError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressLoadErrorCopyWith<_$UserAddressLoadError> get copyWith =>
      __$$UserAddressLoadErrorCopyWithImpl<_$UserAddressLoadError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return userAddressLoadError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return userAddressLoadError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoadError != null) {
      return userAddressLoadError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return userAddressLoadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return userAddressLoadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressLoadError != null) {
      return userAddressLoadError(this);
    }
    return orElse();
  }
}

abstract class UserAddressLoadError implements UserAddressState {
  const factory UserAddressLoadError(final String errorMsg) =
      _$UserAddressLoadError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$UserAddressLoadErrorCopyWith<_$UserAddressLoadError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddressAddedCopyWith<$Res> {
  factory _$$UserAddressAddedCopyWith(
          _$UserAddressAdded value, $Res Function(_$UserAddressAdded) then) =
      __$$UserAddressAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UserAddressAddedCopyWithImpl<$Res>
    extends _$UserAddressStateCopyWithImpl<$Res, _$UserAddressAdded>
    implements _$$UserAddressAddedCopyWith<$Res> {
  __$$UserAddressAddedCopyWithImpl(
      _$UserAddressAdded _value, $Res Function(_$UserAddressAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UserAddressAdded(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAddressAdded implements UserAddressAdded {
  const _$UserAddressAdded(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'UserAddressState.userAddressAdded(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressAdded &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressAddedCopyWith<_$UserAddressAdded> get copyWith =>
      __$$UserAddressAddedCopyWithImpl<_$UserAddressAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return userAddressAdded(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return userAddressAdded?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressAdded != null) {
      return userAddressAdded(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return userAddressAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return userAddressAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressAdded != null) {
      return userAddressAdded(this);
    }
    return orElse();
  }
}

abstract class UserAddressAdded implements UserAddressState {
  const factory UserAddressAdded(final String msg) = _$UserAddressAdded;

  String get msg;
  @JsonKey(ignore: true)
  _$$UserAddressAddedCopyWith<_$UserAddressAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAddressAddErrorCopyWith<$Res> {
  factory _$$UserAddressAddErrorCopyWith(_$UserAddressAddError value,
          $Res Function(_$UserAddressAddError) then) =
      __$$UserAddressAddErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$UserAddressAddErrorCopyWithImpl<$Res>
    extends _$UserAddressStateCopyWithImpl<$Res, _$UserAddressAddError>
    implements _$$UserAddressAddErrorCopyWith<$Res> {
  __$$UserAddressAddErrorCopyWithImpl(
      _$UserAddressAddError _value, $Res Function(_$UserAddressAddError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$UserAddressAddError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAddressAddError implements UserAddressAddError {
  const _$UserAddressAddError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserAddressState.userAddressAddError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressAddError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressAddErrorCopyWith<_$UserAddressAddError> get copyWith =>
      __$$UserAddressAddErrorCopyWithImpl<_$UserAddressAddError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userAddressLoading,
    required TResult Function(List<AddressModel> addressModel)
        userAddressLoaded,
    required TResult Function(String errorMsg) userAddressLoadError,
    required TResult Function(String msg) userAddressAdded,
    required TResult Function(String errorMsg) userAddressAddError,
  }) {
    return userAddressAddError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userAddressLoading,
    TResult? Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult? Function(String errorMsg)? userAddressLoadError,
    TResult? Function(String msg)? userAddressAdded,
    TResult? Function(String errorMsg)? userAddressAddError,
  }) {
    return userAddressAddError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userAddressLoading,
    TResult Function(List<AddressModel> addressModel)? userAddressLoaded,
    TResult Function(String errorMsg)? userAddressLoadError,
    TResult Function(String msg)? userAddressAdded,
    TResult Function(String errorMsg)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressAddError != null) {
      return userAddressAddError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserAddressLoading value) userAddressLoading,
    required TResult Function(UserAddressLoaded value) userAddressLoaded,
    required TResult Function(UserAddressLoadError value) userAddressLoadError,
    required TResult Function(UserAddressAdded value) userAddressAdded,
    required TResult Function(UserAddressAddError value) userAddressAddError,
  }) {
    return userAddressAddError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(UserAddressLoading value)? userAddressLoading,
    TResult? Function(UserAddressLoaded value)? userAddressLoaded,
    TResult? Function(UserAddressLoadError value)? userAddressLoadError,
    TResult? Function(UserAddressAdded value)? userAddressAdded,
    TResult? Function(UserAddressAddError value)? userAddressAddError,
  }) {
    return userAddressAddError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserAddressLoading value)? userAddressLoading,
    TResult Function(UserAddressLoaded value)? userAddressLoaded,
    TResult Function(UserAddressLoadError value)? userAddressLoadError,
    TResult Function(UserAddressAdded value)? userAddressAdded,
    TResult Function(UserAddressAddError value)? userAddressAddError,
    required TResult orElse(),
  }) {
    if (userAddressAddError != null) {
      return userAddressAddError(this);
    }
    return orElse();
  }
}

abstract class UserAddressAddError implements UserAddressState {
  const factory UserAddressAddError(final String errorMsg) =
      _$UserAddressAddError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$UserAddressAddErrorCopyWith<_$UserAddressAddError> get copyWith =>
      throw _privateConstructorUsedError;
}

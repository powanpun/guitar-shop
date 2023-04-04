part of 'user_address_bloc.dart';

@freezed
class UserAddressState with _$UserAddressState {
  const factory UserAddressState.initial() = Initial;
  const factory UserAddressState.userAddressLoading() = UserAddressLoading;
  const factory UserAddressState.userAddressLoaded(
      List<AddressModel> addressModel) = UserAddressLoaded;
  const factory UserAddressState.userAddressLoadError(String errorMsg) =
      UserAddressLoadError;
  const factory UserAddressState.userAddressAdded(String msg) =
      UserAddressAdded;
  const factory UserAddressState.userAddressAddError(String errorMsg) =
      UserAddressAddError;
}

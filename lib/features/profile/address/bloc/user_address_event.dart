part of 'user_address_bloc.dart';

@freezed
class UserAddressEvent with _$UserAddressEvent {
  const factory UserAddressEvent.getUserAddress() = GetUserAddress;
  const factory UserAddressEvent.addUserAddress(
    String city,
    String street,
    String street2,
    String invoiceCity,
    String invoiceStreet,
    String invoiceStreet2,
  ) = AddUserAddress;
  const factory UserAddressEvent.updateUserAddress(
    int id,
    String city,
    String street,
    String street2,
    String type,
  ) = UpdateUserAddress;
}

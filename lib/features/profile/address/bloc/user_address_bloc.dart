import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/profile/address/entities/address_model.dart';

part 'user_address_event.dart';
part 'user_address_state.dart';
part 'user_address_bloc.freezed.dart';

class UserAddressBloc extends Bloc<UserAddressEvent, UserAddressState> {
  final UserRepository _userRepository;
  UserAddressBloc(this._userRepository) : super(const Initial()) {
    on<GetUserAddress>((event, emit) async {
      emit(const UserAddressState.userAddressLoading());

      try {
        BaseResultModel baseResultModel =
            await _userRepository.getUserAddress();

        if (baseResultModel.error != null) {
          emit(UserAddressLoadError(baseResultModel.error.toString()));
        } else {
          List<AddressModel> list = [];

          for (var item in baseResultModel.result!.response!) {
            list.add(AddressModel.fromJson(item as Map<String, dynamic>));
          }
          emit(UserAddressLoaded(list));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);
        emit(UserAddressLoadError(errorMsg));
      }
    });
    on<AddUserAddress>((event, emit) async {
      try {
        BaseResultModel baseResultModel = await _userRepository.addUserAddress(
            event.city,
            event.street,
            event.street2,
            event.invoiceCity,
            event.invoiceStreet,
            event.invoiceStreet2);

        if (baseResultModel.error != null) {
          emit(UserAddressAddError(baseResultModel.error.toString()));
        } else {
          emit(UserAddressAdded(baseResultModel.result!.message ?? ""));
        }
      } catch (e) {
        emit(UserAddressAddError(e.toString()));
      }
    });
    on<UpdateUserAddress>((event, emit) async {
      try {
        BaseResultModel baseResultModel =
            await _userRepository.updateUserAddress(
                event.id, event.city, event.street, event.street2, event.type);

        if (baseResultModel.error != null) {
          emit(UserAddressAddError(baseResultModel.error.toString()));
        } else {
          emit(UserAddressAdded(baseResultModel.result!.message ?? ""));
        }
      } catch (e) {
        emit(UserAddressAddError(e.toString()));
      }
    });
  }
}

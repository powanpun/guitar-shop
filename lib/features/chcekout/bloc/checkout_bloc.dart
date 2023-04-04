import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/checkout_repository/checkout_repository.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CheckoutRepository _checkoutRepository;
  CheckoutBloc(this._checkoutRepository) : super(const Initial()) {
    on<StartCheckout>((event, emit) async {
      emit(const CheckoutState.checkoutProcessing());
      try {
        BaseResultModel result =
            await _checkoutRepository.checkout(event.paymentMode,event.token);

        if (result.result!.status == false) {
          emit(CheckoutState.checkoutError(result.result!.message!));
        } else {
          emit(CheckoutState.checkoutComplete(result.result!.message!));
        }
      } catch (e) {
        if (e is DioError) {
          emit(const CheckoutState.checkoutError(
              "Unable to complete the task."));
        } else {
          emit(CheckoutState.checkoutError(e.toString()));
        }
      }
    });
  }
}

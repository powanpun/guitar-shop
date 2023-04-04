part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = Initial;
  const factory CheckoutState.checkoutProcessing() = CheckoutProcessing;
  const factory CheckoutState.checkoutComplete(String msg) = CheckoutComplete;
  const factory CheckoutState.checkoutError(String errorMsg) = CheckoutError;
}

part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.startCheckout(String paymentMode, String token) =
      StartCheckout;
}

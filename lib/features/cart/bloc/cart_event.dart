part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getUserCart() = GetUserCart;
  const factory CartEvent.addToCart(CartRequestEntity cartRequestEntity) =
      AddToCart;
  const factory CartEvent.updateCart(CartRequestEntity cartRequestEntity) =
      UpdateCart;
}

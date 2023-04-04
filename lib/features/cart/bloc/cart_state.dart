part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = Initial;
  const factory CartState.cartLoading() = CartLoading;
  const factory CartState.cartLoaded(BaseResultModel result) = CartLoaded;
  const factory CartState.cartError(String errorMsg) = CartError;
  const factory CartState.cartEmpty(String emptyMsg) = CartEmpty;
  const factory CartState.cartUpdated(String successMsg) = CartUpdated;
  const factory CartState.cartUpdateError(String errorMsg) = CartUpdateError;
}

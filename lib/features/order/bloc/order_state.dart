part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = Initial;
  const factory OrderState.orderLoading() = OrderLoading;
  const factory OrderState.orderLoaded(List<OrderModel> orderModel) =
      OrderLoaded;
  const factory OrderState.orderLoadError(String errorMsg) = OrderLoadError;
}

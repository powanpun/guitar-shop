import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/order/entitites/order_model.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  List<OrderModel> finalOrders = [];
  int totalItems = 0;
  int index = 0;
  final UserRepository _userRepository;
  OrderBloc(this._userRepository) : super(const Initial()) {
    on<GetAllOrders>((event, emit) async {
      emit(const OrderState.orderLoading());
      try {
        index = 0;
        BaseResultModel result = await _userRepository.viewAllOrders(index);
        if (result.error != null) {
          emit(OrderState.orderLoadError(result.error!.message!));
        } else {
          List<OrderModel> orderData = [];
          for (var item in result.result!.records!) {
            OrderModel orderModel =
                OrderModel.fromJson(item as Map<String, dynamic>);
            orderData.add(orderModel);
          }
          finalOrders = orderData;
          totalItems = result.result!.length!;
          emit(OrderState.orderLoaded(orderData));
        }
      } catch (e) {
        if (e is DioError) {
          emit(const OrderState.orderLoadError("Unable to complete the task."));
        } else {
          emit(OrderState.orderLoadError(e.toString()));
        }
      }
    });
    on<GetNextOrders>((event, emit) async {
      if (finalOrders.length < totalItems) {
        try {
          index += 10;
          BaseResultModel result = await _userRepository.viewAllOrders(index);
          if (result.error != null) {
            emit(OrderState.orderLoadError(result.error!.message!));
          } else {
            List<OrderModel> orderData = [];
            for (var item in result.result!.records!) {
              OrderModel orderModel =
                  OrderModel.fromJson(item as Map<String, dynamic>);
              orderData.add(orderModel);
            }
            finalOrders = finalOrders + orderData;
            emit(OrderState.orderLoaded(finalOrders));
          }
        } catch (e) {
          emit(OrderState.orderLoadError(e.toString()));
        }
      }
    });
  }
}

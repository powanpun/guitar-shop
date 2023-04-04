import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/cart_repository/cart_repository.dart';
import 'package:guitar_shop/features/cart/entities/cart_request_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  CartBloc(this._cartRepository) : super(const Initial()) {
    on<GetUserCart>((event, emit) async {
      emit(const CartState.cartLoading());
      try {
        BaseResultModel result = await _cartRepository.getUserCart();

        if (result.error != null) {
          emit(CartState.cartError(result.error!.message!));
        } else {
          if (result.result!.records!.isNotEmpty) {
            emit(CartState.cartLoaded(result));
          } else {
            emit(const CartState.cartEmpty("Empty Cart"));
          }
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);
        emit(CartState.cartError(errorMsg));
      }
    });

    on<AddToCart>((event, emit) async {
      try {
        BaseResultModel result =
            await _cartRepository.addToCart(event.cartRequestEntity);

        if (result.error != null) {
          emit(CartState.cartUpdateError(result.error!.message!));
        } else {
          emit(const CartState.cartUpdated("Cart Successfully updated"));
        }
      } catch (e) {
        emit(CartState.cartError(e.toString()));
      }
    });
    on<UpdateCart>((event, emit) async {
      try {
        BaseResultModel result =
            await _cartRepository.updateCart(event.cartRequestEntity);

        if (result.error != null) {
          emit(CartState.cartUpdateError(result.error!.message!));
        } else {
          emit(const CartState.cartUpdated("Cart Successfully updated"));
        }
      } catch (e) {
        emit(CartState.cartError(e.toString()));
      }
    });
  }
}

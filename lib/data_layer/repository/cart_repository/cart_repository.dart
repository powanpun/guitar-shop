import 'package:guitar_shop/data_layer/api_services/api_client.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/features/cart/entities/cart_request_entity.dart';

class CartRepository {
  late ApiClient _apiClient;

  CartRepository() {
    _apiClient = ApiClient();
  }

  //get user cart
  Future<BaseResultModel> getUserCart() async {
    final result = await _apiClient.getUserCart();
    return result;
  }

  //add new item user cart
  Future<BaseResultModel> addToCart(CartRequestEntity cartRequestEntity) async {
    final result = await _apiClient.addToCart(cartRequestEntity);
    return result;
  }

  //update user cart
  Future<BaseResultModel> updateCart(
      CartRequestEntity cartRequestEntity) async {
    final result = await _apiClient.updateCart(cartRequestEntity);
    return result;
  }
}

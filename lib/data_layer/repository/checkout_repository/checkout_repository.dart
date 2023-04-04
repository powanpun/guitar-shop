import 'package:guitar_shop/data_layer/api_services/api_client.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';

class CheckoutRepository {
  late ApiClient _apiClient;

  CheckoutRepository() {
    _apiClient = ApiClient();
  }
  //add delivery method
  Future<BaseResultModel> checkout(String paymentMode, String token) async {
    final result = await _apiClient.checkout(paymentMode, token);

    return result;
  }
}

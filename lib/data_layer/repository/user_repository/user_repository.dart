import 'package:guitar_shop/data_layer/api_services/api_client.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';

class UserRepository {
  late ApiClient _apiClient;

  UserRepository() {
    _apiClient = ApiClient();
  }

  //get delivery method
  Future<BaseResultModel> getDeliveryMethod() async {
    final result = await _apiClient.getDeliveryMethod();

    return result;
  }

  //add delivery method
  Future<BaseResultModel> addDeliveryMethod(int id) async {
    final result = await _apiClient.addDeliveryMethod(id);

    return result;
  }

  //veiw all orders
  Future<BaseResultModel> viewAllOrders(int offset) async {
    final result = await _apiClient.viewAllOrders(offset);

    return result;
  }

  //veiw all orders
  Future<BaseResultModel> viewOrderLineDetail(int id) async {
    final result = await _apiClient.viewOrderLineDetail(id);

    return result;
  }

  //get user address
  Future<BaseResultModel> getUserAddress() async {
    final result = await _apiClient.getUserAddress();
    return result;
  }

  //add user address
  Future<BaseResultModel> addUserAddress(
      String city,
      String street,
      String street2,
      String invoiceCity,
      String invoiceStreet,
      String invoiceStreet2) async {
    final result = await _apiClient.addUserAddress(
        city, street, street2, invoiceCity, invoiceStreet, invoiceStreet2);

    return result;
  }

  //add user address
  Future<BaseResultModel> updateUserAddress(
      int id, String city, String street, String street2, String type) async {
    final result =
        await _apiClient.updateUserAddress(id, city, street, street2, type);

    return result;
  }
}

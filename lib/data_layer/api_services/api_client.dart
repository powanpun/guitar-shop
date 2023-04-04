import 'package:dio/dio.dart';
import 'package:guitar_shop/data_layer/api_services/app_interceptor.dart';
import 'package:guitar_shop/data_layer/api_url/api_url.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/features/authentication/login/entities/login_entity.dart';
import 'package:guitar_shop/features/authentication/signup/entities/sign_up_entities.dart';
import 'package:guitar_shop/features/cart/entities/cart_request_entity.dart';

class ApiClient {
  late Dio _dio;

  Dio getApiClient() {
    Dio dio = Dio();
    dio.options = BaseOptions(connectTimeout: 15000, receiveTimeout: 15000);
    dio.options.headers["content-type"] = "application/json";
    dio.options.headers["accept"] = "application/json";
    dio.interceptors.add(AppInterceptors());

    return dio;
  }

  ApiClient() {
    _dio = getApiClient();
  }

  //================================     AUTH    =====================================

  //login

  Future<Result> loginRequest(LoginRequestEntity loginRequestEntity) async {
    try {
      final response = await _dio.post(ApiUrl.loginUrl, data: {
        "method": "call",
        "params": {
          "db": "guitarshop_db",
          "login": loginRequestEntity.phoneNumber,
          "password": loginRequestEntity.password,
        }
      });
      // var id = response.headers.toString();
      // print(id);
      var json = response.data;
      Result result = Result.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  //signup
  Future<Result> signUpRequest(SignUpEntities signUpEntities) async {
    try {
      final response = await _dio.post(ApiUrl.signUpUrl, data: {
        "method": "call",
        "params": {
          "db": "guitarshop_db",
          "name": signUpEntities.name,
          "email": signUpEntities.email,
          "password": signUpEntities.password,
          "phone": signUpEntities.phoneNumber
        }
      });
      // var id = response.headers.toString();
      // print(id);
      var json = response.data;
      Result result = Result.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  // log out #destroy session
  logout() async {
    try {
      await _dio.post(
        ApiUrl.logOutUrl,
        data: {"params": {}},
      );
    } catch (error) {
      rethrow;
    }
  }

  //=============================cart==============================

  Future<BaseResultModel> getUserCart() async {
    try {
      final response = await _dio.post(
        ApiUrl.cartUrl,
        data: {
          "params": {
            "model": "sale.order.line",
            "domain": [
              ["state", "=", "draft"]
            ],
            "fields": [
              "id",
              "name",
              "product_uom_qty",
              "price_unit",
              "price_subtotal",
              "product_id",
              "price_tax",
            ],
          }
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<BaseResultModel> addToCart(CartRequestEntity cartRequestEntity) async {
    try {
      final response = await _dio.post(ApiUrl.addTocart, data: {
        "jsonrpc": "2.0",
        "method": "call",
        "params": {
          "product_id": cartRequestEntity.productId,
          "add_qty": cartRequestEntity.quantity,
          "force_create": true,
          "no_variant_attribute_values": [],
          "product_custom_attribute_values": [],
          "variant_values": []
        }
      });

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<BaseResultModel> updateCart(
      CartRequestEntity cartRequestEntity) async {
    try {
      final response = await _dio.post(ApiUrl.addTocart, data: {
        "jsonrpc": "2.0",
        "method": "call",
        "params": {
          "product_id": cartRequestEntity.productId,
          "set_qty": cartRequestEntity.quantity,
        }
      });

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }
  // ================================== user =====================

  Future<BaseResultModel> getUserAddress() async {
    try {
      final response = await _dio.post(ApiUrl.userAddressUrl,
          data: {"jsonrpc": "2.0", "method": "call", "params": {}});

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<BaseResultModel> addUserAddress(
      String city,
      String street,
      String street2,
      String invoiceCity,
      String invoiceStreet,
      String invoiceStreet2) async {
    try {
      final response = await _dio.post(ApiUrl.addUserAddressUrl, data: {
        "jsonrpc": "2.0",
        "params": {
          "type": "delivery",
          "street": street,
          "street2": street2,
          "city": city,
          "zip": 45210,
          "lat": 27.345456,
          "long": 85.60434
        }
      });
      await _dio.post(ApiUrl.addUserAddressUrl, data: {
        "jsonrpc": "2.0",
        "params": {
          "type": "invoice",
          "street": invoiceStreet,
          "street2": invoiceStreet2,
          "city": invoiceCity,
          "zip": 45210,
          "lat": 27.345456,
          "long": 85.60434
        }
      });

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<BaseResultModel> updateUserAddress(
      int id, String city, String street, String street2, String type) async {
    try {
      final response = await _dio.post(ApiUrl.updateUserAddressUrl, data: {
        "jsonrpc": "2.0",
        "params": {
          "id": id,
          "type": type,
          "street": street,
          "street2": street2,
          "city": city,
          "zip": 45210,
          "lat": 27.345456,
          "long": 85.60434
        }
      });

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  // get delivery method
  Future<BaseResultModel> getDeliveryMethod() async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "delivery.carrier",
            "domain": [
              ["is_published", "=", true]
            ],
            "fields": ["id", "name", "fixed_price", "free_over"],
            "limit": 1
          }
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  // add delivery method
  Future<BaseResultModel> addDeliveryMethod(int id) async {
    try {
      final response = await _dio.post(
        ApiUrl.addDeliveryMethod,
        data: {
          "jsonrpc": "2.0",
          "method": "call",
          "params": {"carrier_id": id}
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  //checkout
  // add delivery method
  Future<BaseResultModel> checkout(String paymentMode, String token) async {
    try {
      final response = await _dio.post(
        ApiUrl.checkoutUrl,
        data: {
          "params": {"paymentMode": paymentMode, "token": token}
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  // view order
  Future<BaseResultModel> viewAllOrders(int offset) async {
    try {
      final response = await _dio.post(
        ApiUrl.cartUrl,
        data: {
          "params": {
            "model": "sale.order",
            "domain": [
              ["state", "!=", "draft"]
            ],
            "fields": [
              "id",
              "name",
              "date_order",
              "amount_total",
              "state",
              "amount_untaxed",
              "amount_tax",
              "amount_delivery"
            ],
            "limit": 10,
            "offset": offset
          }
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  // view order
  Future<BaseResultModel> viewOrderLineDetail(int id) async {
    try {
      final response = await _dio.post(
        ApiUrl.cartUrl,
        data: {
          "params": {
            "model": "sale.order.line",
            "domain": [
              ["state", "!=", "draft"],
              ["id", "=", id]
            ],
            "fields": [
              "id",
              "name",
              "product_id",
              "product_uom_qty",
              "price_unit",
              "price_subtotal",
              "qty_delivered_method"
            ],
          }
        },
      );

      var json = response.data;
      BaseResultModel result = BaseResultModel.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}

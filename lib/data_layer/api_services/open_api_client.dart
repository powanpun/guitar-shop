import 'package:dio/dio.dart';
import 'package:guitar_shop/data_layer/api_url/api_url.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';

class OpenApiClient {
  late Dio _dio;

  Dio getOpenApiClient() {
    Dio dio = Dio();
    dio.options = BaseOptions(connectTimeout: 15000, receiveTimeout: 15000);
    dio.options.headers["content-type"] = "application/json";
    dio.options.headers["accept"] = "application/json";

    return dio;
  }

  OpenApiClient() {
    _dio = getOpenApiClient();
  }

  //================================     HOMEPAGE    =====================================

  Future<BaseResultModel> getHomePageSlider() async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "method": "call",
          "params": {
            "model": "guitarshop.slider",
            "domain": [
              ["status", "=", "published"]
            ],
            "fields": [
              "id",
              "name",
              "image",
              "order",
              "click_action",
              "product_id",
              "product_ecomm_category_id"
            ],
            "order": "order asc",
            "context": {"get_image_url": true}
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

//get categories
  Future<BaseResultModel> getProductCategories() async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.public.category",
            "domain": [],
            "fields": [
              "id",
              "name",
              "parent_id",
              "image_1920",
              "sequence",
              "active",
            ],
            "order": "sequence",
            "context": {"get_image_url": true}
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
  //get all featured products

  Future<BaseResultModel> getProductsList() async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.product",
            "domain": [],
            "fields": ["id", "name", "categ_id", "description", "image_1920"],
            "offset": 0,
            "limit": 10,
            "order": "id asc",
            "context": {"get_image_url": true}
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

  Future<Result> getFeaturedList() async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "guitarshop.feature.item",
            "domain": [
              ["status", "=", "published"]
            ],
            "fields": ["id", "name", "item_type", "line_ids"],
            "limit": 10,
            "order": "order"
          }
        },
      );

      var json = response.data;
      Result result = Result.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<Result> getFeaturedItems(int id) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "guitarshop.feature.item.line",
            "domain": [
              ["feature_id", "=", id]
            ],
            "fields": ["id", "product_id", "product_category_id"],
          }
        },
      );

      var json = response.data;
      Result result = Result.fromJson(json);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  Future<BaseResultModel> getFeaturedItemsDetail(int id) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.product",
            "domain": [
              ["id", "=", id]
            ],
            "fields": [
              "id",
              "name",
              "display_name",
              "categ_id",
              "description",
              "image_1920",
              "list_price",
              "product_variant_image_ids"
            ],
            "order": "id asc",
            "context": {"get_image_url": true}
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

  Future<BaseResultModel> getFeaturedCategoryDetail(int id) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.public.category",
            "domain": [
              ["active", "=", true],
              ["id", "=", id]
            ],
            "fields": [
              "id",
              "name",
              "parent_id",
              "image_1920",
              "sequence",
              "active",
            ],
            "order": "sequence",
            "context": {"get_image_url": true}
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

  Future<BaseResultModel> getItemByCategory(int id, int offset) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.product",
            "domain": [
              ["public_categ_ids", "=", id]
            ],
            "fields": [
              "id",
              "name",
              "display_name",
              "categ_id",
              "description",
              "image_1920",
              "list_price"
            ],
            "offset": offset,
            "limit": 10,
            "order": "id asc",
            "context": {"get_image_url": true}
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

  Future<BaseResultModel> searchProduct(String query, int offset) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.product",
            "domain": [
              ["name", "ilike", query],
            ],
            "fields": [
              "id",
              "name",
              "categ_id",
              "display_name",
              "description",
              "image_128",
              "image_256",
              "image_1920",
              "list_price"
            ],
            "offset": offset,
            "limit": 10,
            "order": "id asc",
            "context": {"get_image_url": true}
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

  Future<BaseResultModel> searchCategory(String query) async {
    try {
      final response = await _dio.post(
        ApiUrl.openUrl,
        data: {
          "params": {
            "model": "product.public.category",
            "domain": [
              ["active", "=", true],
              ["name", "ilike", query],
            ],
            "fields": [
              "id",
              "name",
              "parent_id",
              "image_1920",
              "sequence",
              "active",
            ],
            "offset": 0,
            "order": "sequence",
            "context": {"get_image_url": true}
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

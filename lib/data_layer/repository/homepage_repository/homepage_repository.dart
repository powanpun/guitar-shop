import 'package:guitar_shop/data_layer/api_services/open_api_client.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';

class HomepageRepository {
  late OpenApiClient _openApiClient;

  HomepageRepository() {
    _openApiClient = OpenApiClient();
  }

  //homepage
  Future<BaseResultModel> getHomePageSlider() async {
    final result = await _openApiClient.getHomePageSlider();

    return result;
  }

//product categories
  Future<BaseResultModel> getProductCategories() async {
    final result = await _openApiClient.getProductCategories();

    return result;
  }

//products list
  Future<BaseResultModel> getProductsList() async {
    final result = await _openApiClient.getProductsList();

    return result;
  }

  //featured categories
  Future<Result> getFeaturedList() async {
    final result = await _openApiClient.getFeaturedList();

    return result;
  }

  //featured product item
  Future<Result> getFeaturedItems(int id) async {
    final result = await _openApiClient.getFeaturedItems(id);
    return result;
  }

  //featured product item detail
  Future<BaseResultModel> getFeaturedItemsDetail(int id) async {
    final result = await _openApiClient.getFeaturedItemsDetail(id);

    return result;
  }

  //featured product item detail
  Future<BaseResultModel> getFeaturedCategoryDetail(int id) async {
    final result = await _openApiClient.getFeaturedCategoryDetail(id);
    return result;
  }

  //get item by category
  Future<BaseResultModel> getItemByCategory(int id, int offset) async {
    final result = await _openApiClient.getItemByCategory(id, offset);

    return result;
  }

  //search item
  Future<BaseResultModel> searchProduct(String query, int offset) async {
    final result = await _openApiClient.searchProduct(query, offset);

    return result;
  }

  //Searh category
  Future<BaseResultModel> searchCategory(String query) async {
    final result = await _openApiClient.searchCategory(query);

    return result;
  }
}

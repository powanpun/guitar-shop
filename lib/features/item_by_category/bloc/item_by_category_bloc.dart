import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

part 'item_by_category_event.dart';
part 'item_by_category_state.dart';
part 'item_by_category_bloc.freezed.dart';

class ItemByCategoryBloc
    extends Bloc<ItemByCategoryEvent, ItemByCategoryState> {
  List<ProductModel> finalProducts = [];
  int totalItems = 0;
  int index = 0;
  final HomepageRepository _homepageRepository;
  ItemByCategoryBloc(this._homepageRepository) : super(const Initial()) {
    on<GetItemByCategory>((event, emit) async {
      emit(const ItemByCategoryState.itemByCategoryLoading());

      try {
        BaseResultModel result =
            await _homepageRepository.getItemByCategory(event.id, 0);

        if (result.error != null) {
          emit(ItemByCategoryState.itemByCategoryError(result.error!.message!));
        } else {
          List<ProductModel> productData = [];
          for (var item in result.result!.records!) {
            ProductModel orderModel =
                ProductModel.fromJson(item as Map<String, dynamic>);
            productData.add(orderModel);
          }
          finalProducts = productData;
          totalItems = result.result!.length!;
          emit(ItemByCategoryState.itemByCategoryLoaded(productData));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);

        emit(ItemByCategoryState.itemByCategoryError(errorMsg));
      }
    });
    on<GetItemByCategoryNextPage>((event, emit) async {
      if (finalProducts.length < totalItems) {
        try {
          index += 10;
          BaseResultModel result =
              await _homepageRepository.getItemByCategory(event.id, index);
          if (result.error != null) {
            emit(ItemByCategoryState.itemByCategoryError(
                result.error!.message!));
          } else {
            List<ProductModel> productData = [];
            for (var item in result.result!.records!) {
              ProductModel orderModel =
                  ProductModel.fromJson(item as Map<String, dynamic>);
              productData.add(orderModel);
            }
            finalProducts = finalProducts + productData;
            emit(ItemByCategoryState.itemByCategoryLoaded(finalProducts));
          }
        } catch (e) {
          var errorMsg = GetDioErrors.getDioError(e);

          emit(ItemByCategoryState.itemByCategoryError(errorMsg));
        }
      }
    });
  }
}

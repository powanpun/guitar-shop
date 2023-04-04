import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final HomepageRepository _homepageRepository;
  List<ProductModel> finalProducts = [];
  int totalItems = 0;
  int index = 0;
  SearchProductBloc(this._homepageRepository) : super(const Initial()) {
    on<StartProductSearch>((event, emit) async {
      emit(const SearchProductState.searchProductLoading());
      try {
        BaseResultModel result =
            await _homepageRepository.searchProduct(event.query, 0);
        if (result.error != null) {
          emit(SearchProductState.searchProductError(result.error!.message!));
        } else {
          List<ProductModel> data = [];
          for (var item in result.result!.records!) {
            ProductModel productModel =
                ProductModel.fromJson(item as Map<String, dynamic>);
            data.add(productModel);
          }
          finalProducts = data;
          totalItems = result.result!.length!;
          emit(SearchProductState.searchProductLoaded(data));
        }
      } catch (e) {
        emit(SearchProductState.searchProductError(e.toString()));
      }
    });
    on<StartProductSearchNextPage>((event, emit) async {
      if (finalProducts.length < totalItems) {
        try {
          index += 10;
          BaseResultModel result =
              await _homepageRepository.searchProduct(event.query, index);
          if (result.error != null) {
            emit(SearchProductState.searchProductError(result.error!.message!));
          } else {
            List<ProductModel> data = [];
            for (var item in result.result!.records!) {
              ProductModel productModel =
                  ProductModel.fromJson(item as Map<String, dynamic>);
              data.add(productModel);
            }
            finalProducts = finalProducts + data;
            emit(SearchProductState.searchProductLoaded(finalProducts));
          }
        } catch (e) {
          emit(SearchProductState.searchProductError(e.toString()));
        }
      }
    });
    on<ResetState>((event, emit) async {
      totalItems = 0;
      index = 0;
      emit(const SearchProductState.initial());
    });
  }
}

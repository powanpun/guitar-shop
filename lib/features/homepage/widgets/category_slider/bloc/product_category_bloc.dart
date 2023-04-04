import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';

part 'product_category_event.dart';
part 'product_category_state.dart';
part 'product_category_bloc.freezed.dart';

class ProductCategoryBloc
    extends Bloc<ProductCategoryEvent, ProductCategoryState> {
  final HomepageRepository _homepageRepository;

  ProductCategoryBloc(this._homepageRepository) : super(const Initial()) {
    on<ProductCategoryEvent>((event, emit) async {
      emit(const ProductCategoryState.categoryLoading());

      try {
        BaseResultModel result =
            await _homepageRepository.getProductCategories();

        if (result.error != null) {
          emit(ProductCategoryState.categoryError(result.error!.message!));
        } else {
          emit(ProductCategoryState.categoryLoaded(result));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);
        emit(ProductCategoryState.categoryError(errorMsg));
      }
    });
  }
}

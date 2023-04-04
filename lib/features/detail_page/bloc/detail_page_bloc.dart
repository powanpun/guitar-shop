import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

part 'detail_page_event.dart';
part 'detail_page_state.dart';
part 'detail_page_bloc.freezed.dart';

class DetailPageBloc extends Bloc<DetailPageEvent, DetailPageState> {
  final HomepageRepository _homepageRepository;
  DetailPageBloc(this._homepageRepository) : super(const Initial()) {
    on<GetProductDetail>((event, emit) async {
      emit(const ProductDetailLoading());
      try {
        BaseResultModel result =
            await _homepageRepository.getFeaturedItemsDetail(event.id);

        if (result.error != null) {
          emit(ProductDetailError(result.error!.message.toString()));
        } else {
          ProductModel productDetail = ProductModel.fromJson(
              result.result!.records!.first as Map<String, dynamic>);
          emit(ProductDetailLoaded(productDetail));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);

        emit(ProductDetailError(errorMsg));
      }
    });
    on<ResetGetProductDetail>(
      (event, emit) {
        emit(const ProductDetailLoading());
      },
    );
  }
}

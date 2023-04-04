import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';

part 'featured_products_event.dart';
part 'featured_products_state.dart';
part 'featured_products_bloc.freezed.dart';

class FeaturedProductsBloc
    extends Bloc<FeaturedProductsEvent, FeaturedProductsState> {
  final HomepageRepository _homepageRepository;

  FeaturedProductsBloc(this._homepageRepository) : super(const Initial()) {
    on<FeaturedProductsEvent>((event, emit) async {
      emit(const FeaturedProductsState.featuredProductLoading());

      try {
        BaseResultModel result = await _homepageRepository.getProductsList();

        if (result.error != null) {
          emit(FeaturedProductsState.featuredProductsError(
              result.error!.message!));
        } else {
          emit(FeaturedProductsState.featuredProductsLoaded(result));
        }
      } catch (e) {
        emit(FeaturedProductsState.featuredProductsError(e.toString()));
      }
    });
  }
}

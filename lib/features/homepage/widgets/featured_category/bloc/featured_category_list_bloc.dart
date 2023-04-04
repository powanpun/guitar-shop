import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';

part 'featured_category_list_event.dart';
part 'featured_category_list_state.dart';
part 'featured_category_list_bloc.freezed.dart';

class FeaturedCategoryListBloc
    extends Bloc<FeaturedCategoryListEvent, FeaturedCategoryListState> {
  final HomepageRepository _homepageRepository;

  FeaturedCategoryListBloc(this._homepageRepository) : super(const Initial()) {
    on<GetFeaturedCategoryList>((event, emit) async {
      emit(const FeaturedCategoryListState.featuredCategoryLoading());

      try {
        Result result = await _homepageRepository.getFeaturedList();

        if (result.error != null) {
          emit(FeaturedCategoryListState.featuredCategorysError(
              result.error!.message!));
        } else {
          emit(FeaturedCategoryListState.featuredCategorysLoaded(result));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);
        emit(FeaturedCategoryListState.featuredCategorysError(errorMsg));
      }
    });
  }
}

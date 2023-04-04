import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';

part 'search_category_event.dart';
part 'search_category_state.dart';
part 'search_category_bloc.freezed.dart';

class SearchCategoryBloc
    extends Bloc<SearchCategoryEvent, SearchCategoryState> {
  final HomepageRepository _homepageRepository;
  SearchCategoryBloc(this._homepageRepository) : super(const Initial()) {
    on<StartCategorySearch>((event, emit) async {
      emit(const SearchCategoryState.searchCategoryLoading());
      try {
        BaseResultModel result =
            await _homepageRepository.searchCategory(event.query);
        if (result.error != null) {
          emit(SearchCategoryState.searchCategoryError(result.error!.message!));
        } else {
          List<CategoryModel> data = [];
          for (var item in result.result!.records!) {
            CategoryModel categoryModel =
                CategoryModel.fromJson(item as Map<String, dynamic>);
            data.add(categoryModel);
          }
          emit(SearchCategoryState.searchCategoryLoaded(data));
        }
      } catch (e) {
        emit(SearchCategoryState.searchCategoryError(e.toString()));
      }
    });
    on<ResetSearchCategoryState>((event, emit) async {
      emit(const SearchCategoryState.initial());
    });
  }
}

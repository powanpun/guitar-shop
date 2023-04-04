part of 'search_category_bloc.dart';

@freezed
class SearchCategoryState with _$SearchCategoryState {
  const factory SearchCategoryState.initial() = Initial;
  const factory SearchCategoryState.searchCategoryLoaded(
      List<CategoryModel> data) = SearchCategoryLoaded;
  const factory SearchCategoryState.searchCategoryLoading() =
      SearchCategoryLoading;
  const factory SearchCategoryState.searchCategoryError(String errorMsg) =
      SearchCategoryError;
}

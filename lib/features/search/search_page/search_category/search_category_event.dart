part of 'search_category_bloc.dart';

@freezed
class SearchCategoryEvent with _$SearchCategoryEvent {
  const factory SearchCategoryEvent.startCategorySearch(String query) =
      StartCategorySearch;
  const factory SearchCategoryEvent.resetSearchCategoryState() =
      ResetSearchCategoryState;
}

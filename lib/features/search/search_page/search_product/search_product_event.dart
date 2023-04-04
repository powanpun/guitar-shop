part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.startProductSearch(String query) =
      StartProductSearch;
  const factory SearchProductEvent.startProductSearchNextPage(String query) =
      StartProductSearchNextPage;
  const factory SearchProductEvent.resetState() = ResetState;
}

part of 'search_product_bloc.dart';

@freezed
class SearchProductState with _$SearchProductState {
  const factory SearchProductState.initial() = Initial;
  const factory SearchProductState.searchProductLoaded(
      List<ProductModel> data) = SearchProductLoaded;
  const factory SearchProductState.searchProductLoading() =
      SearchProductLoading;
  const factory SearchProductState.searchProductError(String errorMsg) =
      SearchProductError;
}

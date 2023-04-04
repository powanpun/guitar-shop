part of 'featured_products_bloc.dart';

@freezed
class FeaturedProductsState with _$FeaturedProductsState {
  const factory FeaturedProductsState.initial() = Initial;
  const factory FeaturedProductsState.featuredProductLoading() =
      FeaturedProductLoading;
  const factory FeaturedProductsState.featuredProductsLoaded(
      BaseResultModel result) = FeaturedProductLoaded;
  const factory FeaturedProductsState.featuredProductsError(String errorMsg) =
      FeaturedProductError;
}

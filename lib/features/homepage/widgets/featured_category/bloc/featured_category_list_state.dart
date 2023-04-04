part of 'featured_category_list_bloc.dart';

@freezed
class FeaturedCategoryListState with _$FeaturedCategoryListState {
  const factory FeaturedCategoryListState.initial() = Initial;
  const factory FeaturedCategoryListState.featuredCategoryLoading() =
      FeaturedCategoryLoading;
  const factory FeaturedCategoryListState.featuredCategorysLoaded(
      Result result) = FeaturedCategoryLoaded;
  const factory FeaturedCategoryListState.featuredCategorysError(
      String errorMsg) = FeaturedCategoryError;
}

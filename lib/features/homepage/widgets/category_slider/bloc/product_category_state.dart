part of 'product_category_bloc.dart';

@freezed
class ProductCategoryState with _$ProductCategoryState {
  const factory ProductCategoryState.initial() = Initial;
  const factory ProductCategoryState.categoryLoading() = CategoryLoading;
  const factory ProductCategoryState.categoryLoaded(BaseResultModel result) =
      CategoryLoaded;
  const factory ProductCategoryState.categoryError(String errorMsg) =
      CategoryError;
}

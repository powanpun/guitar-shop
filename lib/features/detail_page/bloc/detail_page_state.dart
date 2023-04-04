part of 'detail_page_bloc.dart';

@freezed
class DetailPageState with _$DetailPageState {
  const factory DetailPageState.initial() = Initial;
  const factory DetailPageState.productDetailLoading() = ProductDetailLoading;
  const factory DetailPageState.productDetailLoaded(ProductModel productModel) =
      ProductDetailLoaded;
  const factory DetailPageState.productDetailError(String errorMsg) =
      ProductDetailError;
}

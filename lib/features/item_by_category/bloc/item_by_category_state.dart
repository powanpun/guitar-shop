part of 'item_by_category_bloc.dart';

@freezed
class ItemByCategoryState with _$ItemByCategoryState {
  const factory ItemByCategoryState.initial() = Initial;
  const factory ItemByCategoryState.itemByCategoryLoading() =
      ItemByCategoryLoading;
  const factory ItemByCategoryState.itemByCategoryLoaded(
      List<ProductModel> productModel) = ItemByCategoryLoaded;
  const factory ItemByCategoryState.itemByCategoryError(String errorMsg) =
      ItemByCategoryError;
}

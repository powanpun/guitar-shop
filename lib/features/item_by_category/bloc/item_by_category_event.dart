part of 'item_by_category_bloc.dart';

@freezed
class ItemByCategoryEvent with _$ItemByCategoryEvent {
  const factory ItemByCategoryEvent.getItemByCategory(int id) =
      GetItemByCategory;
  const factory ItemByCategoryEvent.getItemByCategoryNextPage(int id) =
      GetItemByCategoryNextPage;
}

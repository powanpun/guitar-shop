part of 'featured_category_list_bloc.dart';

@freezed
class FeaturedCategoryListEvent with _$FeaturedCategoryListEvent {
  const factory FeaturedCategoryListEvent.getFeaturedCategoryList() =
      GetFeaturedCategoryList;
}

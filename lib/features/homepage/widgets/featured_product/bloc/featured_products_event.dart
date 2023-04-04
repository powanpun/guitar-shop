part of 'featured_products_bloc.dart';

@freezed
class FeaturedProductsEvent with _$FeaturedProductsEvent {
  const factory FeaturedProductsEvent.getFeaturedProducts() =
      GetFeaturedProducts;
}

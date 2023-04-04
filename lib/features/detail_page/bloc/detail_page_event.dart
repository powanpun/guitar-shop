part of 'detail_page_bloc.dart';

@freezed
class DetailPageEvent with _$DetailPageEvent {
  const factory DetailPageEvent.getProductDetail(int id) = GetProductDetail;
  const factory DetailPageEvent.resetProductDetail() = ResetGetProductDetail;
}

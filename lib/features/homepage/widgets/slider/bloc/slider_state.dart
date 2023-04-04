part of 'slider_bloc.dart';

@freezed
class SliderState with _$SliderState {
  const factory SliderState.initial() = Initial;
  const factory SliderState.loading() = Loading;
  const factory SliderState.loaded(List<SliderModel> result) = Loaded;
  const factory SliderState.error(String errorMsg) = Error;
}

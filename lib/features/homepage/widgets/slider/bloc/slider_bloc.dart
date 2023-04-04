import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guitar_shop/core/error/error_handler.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/slider/entities/slider_model.dart';

part 'slider_event.dart';
part 'slider_state.dart';
part 'slider_bloc.freezed.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  final HomepageRepository _homepageRepository;
  SliderBloc(this._homepageRepository) : super(const Initial()) {
    on<GetHomePageSlider>((event, emit) async {
      emit(const SliderState.loading());

      try {
        BaseResultModel result = await _homepageRepository.getHomePageSlider();
        if (result.error != null) {
          emit(SliderState.error(result.error!.message!));
        } else {
          List<SliderModel> sliders = [];
          for (var item in result.result!.records!) {
            SliderModel sliderItem =
                SliderModel.fromJson(item as Map<String, dynamic>);
            sliders.add(sliderItem);
          }
          emit(SliderState.loaded(sliders));
        }
      } catch (e) {
        var errorMsg = GetDioErrors.getDioError(e);
        emit(SliderState.error(errorMsg));
      }
    });
  }
}

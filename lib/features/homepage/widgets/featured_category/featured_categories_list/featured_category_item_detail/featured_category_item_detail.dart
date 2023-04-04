import 'package:flutter/material.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/item_widgets/category_item.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';

class FeaturedCategoryItemDetail extends StatefulWidget {
  final int itemId;
  final HomepageRepository homepageRepository;
  const FeaturedCategoryItemDetail(
      {super.key, required this.itemId, required this.homepageRepository});

  @override
  State<FeaturedCategoryItemDetail> createState() =>
      _FeaturedCategoryItemDetailState();
}

class _FeaturedCategoryItemDetailState
    extends State<FeaturedCategoryItemDetail> {
  late BaseResultModel result;
  @override
  initState() {
    super.initState();
  }

  Future<BaseResultModel> getData() async {
    result = await widget.homepageRepository
        .getFeaturedCategoryDetail(widget.itemId);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BaseResultModel>(
      future: getData(), // if you mean this method well return image url
      builder: (BuildContext context, AsyncSnapshot<BaseResultModel> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.result!.records!.isNotEmpty) {
            CategoryModel data = CategoryModel.fromJson(
                snapshot.data!.result!.records!.first as Map<String, dynamic>);
            return CategoryItem(
              records: data,
            );
          } else {
            return const Text("no data");
          }
        }
        if (snapshot.hasError) {
          return const Text("error");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

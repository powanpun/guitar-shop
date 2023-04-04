import 'package:flutter/material.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/item_widgets/featured_product_item.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

class FeaturedItemDetail extends StatefulWidget {
  final int itemId;
  final HomepageRepository homepageRepository;
  const FeaturedItemDetail(
      {super.key, required this.itemId, required this.homepageRepository});

  @override
  State<FeaturedItemDetail> createState() => _FeaturedItemDetailState();
}

class _FeaturedItemDetailState extends State<FeaturedItemDetail> {
  late BaseResultModel result;
  @override
  initState() {
    super.initState();
  }

  Future<BaseResultModel> getData() async {
    result =
        await widget.homepageRepository.getFeaturedItemsDetail(widget.itemId);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BaseResultModel>(
      future: getData(), // if you mean this method well return image url
      builder: (BuildContext context, AsyncSnapshot<BaseResultModel> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.result!.records!.isNotEmpty) {
            ProductModel data = ProductModel.fromJson(
                snapshot.data!.result!.records!.first as Map<String, dynamic>);
            return FeaturedProductItems(
              records: data,
            );
          }
        }
        if (snapshot.hasError) {
          return const Text("error");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

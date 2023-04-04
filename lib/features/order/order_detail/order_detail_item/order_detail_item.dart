import 'package:flutter/material.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';
import 'package:guitar_shop/features/order/order_detail/order_detail_item/order_line_detail.dart';

class OrderDetailItem extends StatefulWidget {
  final int itemId;
  final HomepageRepository homepageRepository;
  const OrderDetailItem(
      {super.key, required this.itemId, required this.homepageRepository});

  @override
  State<OrderDetailItem> createState() => _OrderDetailItemState();
}

class _OrderDetailItemState extends State<OrderDetailItem> {
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
            return OrderLineDetail(
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

import 'package:flutter/material.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/model/result/base_result_model/base_result_model.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/cart/entities/cart_model.dart';

class OrderLineInfo extends StatefulWidget {
  final int itemId;
  final UserRepository userRepository;
  const OrderLineInfo(
      {super.key, required this.itemId, required this.userRepository});

  @override
  State<OrderLineInfo> createState() => _OrderLineInfoState();
}

class _OrderLineInfoState extends State<OrderLineInfo> {
  late BaseResultModel result;
  @override
  initState() {
    super.initState();
  }

  Future<BaseResultModel> getData() async {
    result = await widget.userRepository.viewOrderLineDetail(widget.itemId);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BaseResultModel>(
      future: getData(), // if you mean this method well return image url
      builder: (BuildContext context, AsyncSnapshot<BaseResultModel> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.result!.records!.isNotEmpty) {
            CartModel data = CartModel.fromJson(
                snapshot.data!.result!.records!.first as Map<String, dynamic>);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: data.name!,
                  maxLine: 1,
                  textOverflow: TextOverflow.ellipsis,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomText(
                  title: "Unit Price:   Rs. ${data.priceUnit!} ",
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomText(
                  title: "Quantity:   ${(data.totalQuantity!.round())}",
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomText(
                  title: "Sub Total:   Rs. ${data.priceSubTotal!}  ",
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ],
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

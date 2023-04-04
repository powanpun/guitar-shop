import 'package:flutter/material.dart';
import 'package:guitar_shop/core/extenstions/extenstions.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/order/entitites/order_model.dart';
import 'package:guitar_shop/features/order/order_detail/order_detail_item/order_detail_item.dart';
import 'package:guitar_shop/features/order/order_detail/order_detail_item/order_line_info.dart';
import 'package:guitar_shop/features/order/order_detail_widgets/order_charges.dart';

class OrderDetail extends StatefulWidget {
  final OrderModel order;
  const OrderDetail({super.key, required this.order});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    title: "Order ID: ${widget.order.name}",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomText(
                    title: widget.order.dateOrder!,
                    color: ColorManager.textGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: CustomText(title: widget.order.state!.capitalize()),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.order.productIds!.length,
                itemBuilder: (context, index) {
                  if (index < widget.order.productIds!.length - 1) {
                    return Row(
                      children: [
                        OrderDetailItem(
                          itemId: widget.order.productIds![index],
                          homepageRepository: HomepageRepository(),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: OrderLineInfo(
                              itemId: widget.order.lineIds![index],
                              userRepository: UserRepository()),
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              OrderCharges(
                orderModel: widget.order,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

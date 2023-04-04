import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/extenstions/extenstions.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/order/entitites/order_model.dart';

class OrderItem extends StatefulWidget {
  final OrderModel orderModel;
  const OrderItem({super.key, required this.orderModel});

  @override
  State<OrderItem> createState() => _OrderItmeState();
}

class _OrderItmeState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.orderDetailPageRoute,
          extra: widget.orderModel),
      child: Container(
        decoration: BoxDecoration(
            color: ColorManager.profileBg,
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: CustomText(
                  title: widget.orderModel.dateOrder!,
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
                  label:
                      CustomText(title: widget.orderModel.state!.capitalize()),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              title: "Order ID: ${widget.orderModel.name}",
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              title: "Rs.${widget.orderModel.amountTotal}",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorManager.categorySliderTextColor,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomBottom(
              text: "View Details",
              padding: 16,
              radius: 10,
              backgroundColor: ColorManager.white,
            )
          ],
        ),
      ),
    );
  }
}

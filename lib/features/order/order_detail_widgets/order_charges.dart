import 'package:flutter/material.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/order/entitites/order_model.dart';

class OrderCharges extends StatelessWidget {
  final OrderModel orderModel;
  const OrderCharges({Key? key, required this.orderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ChargeItem(
              chargeType: "Sub Total",
              chargeAmount:
                  orderModel.amountUntaxed! - orderModel.amountDelivery!),
          if (orderModel.amountTax != 0.0) ...{
            ChargeItem(chargeType: "TAX", chargeAmount: orderModel.amountTax!),
          },
          if (orderModel.amountDelivery != 0.0) ...{
            ChargeItem(
                chargeType: "Delivery Charge",
                chargeAmount: orderModel.amountDelivery!),
          },
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                title: "Grand Total",
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                title: "Rs. ${orderModel.amountTotal}",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ChargeItem extends StatelessWidget {
  final String chargeType;
  final double chargeAmount;
  final bool? bold;
  const ChargeItem({
    Key? key,
    required this.chargeType,
    required this.chargeAmount,
    this.bold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            title: chargeType,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          CustomText(
            title: "Rs.$chargeAmount",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}

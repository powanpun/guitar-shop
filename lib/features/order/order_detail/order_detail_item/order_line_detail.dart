import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

class OrderLineDetail extends StatefulWidget {
  final ProductModel records;
  const OrderLineDetail({super.key, required this.records});

  @override
  State<OrderLineDetail> createState() => _OrderLineDetailState();
}

class _OrderLineDetailState extends State<OrderLineDetail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.detailPageRoute, extra: widget.records);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            color: ColorManager.profileBg,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.records.id.toString(),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCachedImage(
                    height: 80,
                    width: 80,
                    imageUrl: (widget.records.image_1920.runtimeType == String)
                        ? widget.records.image_1920 as String
                        : "",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

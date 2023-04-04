import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/detail_page/bloc/detail_page_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';

class FeaturedProductItems extends StatefulWidget {
  final bool? fromCategory;
  final ProductModel records;
  const FeaturedProductItems(
      {super.key, required this.records, this.fromCategory});

  @override
  State<FeaturedProductItems> createState() => _FeaturedProductItemsState();
}

class _FeaturedProductItemsState extends State<FeaturedProductItems> {
  bool? isHeroEnabled;
  @override
  void initState() {
    isHeroEnabled = widget.fromCategory ?? true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isHeroEnabled = true;
        });
        context.read<DetailPageBloc>().add(const ResetGetProductDetail());
        context.push(AppRoutes.detailPageRoute, extra: widget.records);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: ColorManager.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroMode(
              enabled: isHeroEnabled ?? true,
              child: Hero(
                tag: widget.records.id.toString(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomCachedImage(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      imageUrl:
                          (widget.records.image_1920.runtimeType == String)
                              ? widget.records.image_1920 as String
                              : "",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    title: widget.records.name ?? '',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: "Rs. ${widget.records.listPrice.toString()}",
                    fontSize: 14,
                    color: ColorManager.categorySliderTextColor,
                    fontWeight: FontWeight.w600,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

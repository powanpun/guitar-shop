import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';

class CategoryItem extends StatefulWidget {
  final CategoryModel records;
  const CategoryItem({super.key, required this.records});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.itemByCatePageRoute, extra: widget.records);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomCachedImage(
                  height: 200,
                  width: 200,
                  imageUrl: (widget.records.image_1920.runtimeType == String)
                      ? widget.records.image_1920 as String
                      : "",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              title: widget.records.name ?? "",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              maxLine: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
            // CustomText(
            //   title: " items",
            //   fontSize: 14,
            //   color: ColorManager.categorySliderTextColor,
            //   fontWeight: FontWeight.w600,
            //   maxLine: 1,
            //   textOverflow: TextOverflow.ellipsis,
            // ),
          ],
        ),
      ),
    );
  }
}

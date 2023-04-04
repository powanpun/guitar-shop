import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:guitar_shop/core/helper/is_bottom.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/loading_shimmer/search_simmer.dart';
import 'package:guitar_shop/features/homepage/item_widgets/featured_product_item.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';
import 'package:guitar_shop/features/item_by_category/bloc/item_by_category_bloc.dart';

class ItemByCategory extends StatefulWidget {
  final CategoryModel categoryModel;
  const ItemByCategory({super.key, required this.categoryModel});

  @override
  State<ItemByCategory> createState() => _ItemByCategoryState();
}

class _ItemByCategoryState extends State<ItemByCategory> {
  final _scrollController = ScrollController();
  void _onScroll() {
    if (isBottom(_scrollController)) {
      context
          .read<ItemByCategoryBloc>()
          .add(GetItemByCategoryNextPage(widget.categoryModel.id!));
    }
  }

  @override
  void initState() {
    context
        .read<ItemByCategoryBloc>()
        .add(GetItemByCategory(widget.categoryModel.id!));

    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.categoryModel.name!)),
      body: BlocBuilder<ItemByCategoryBloc, ItemByCategoryState>(
        builder: (context, state) {
          if (state is ItemByCategoryError) {
            return Text(state.errorMsg);
          } else if (state is ItemByCategoryLoaded) {
            return Container(
              color: ColorManager.profileBg,
              padding: const EdgeInsets.all(16.0),
              child: RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<ItemByCategoryBloc>()
                      .add(GetItemByCategory(widget.categoryModel.id!));
                },
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  itemCount: (state.productModel.length),
                  itemBuilder: (context, index) {
                    return FeaturedProductItems(
                      fromCategory: false,
                      records: state.productModel[index],
                    );
                  },
                ),
              ),
            );
          } else {
            return const SearchSimmer();
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/helper/bloc/network_connection_bloc.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/values_managers.dart';
import 'package:guitar_shop/core/widgets/no_connection.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/bloc/product_category_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/category_slider.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/bloc/featured_category_list_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/featured_category.dart';
import 'package:guitar_shop/features/homepage/widgets/home_page_appbar.dart';
import 'package:guitar_shop/features/homepage/widgets/slider/bloc/slider_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/slider/homepage_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
  }

  void refresh() {
    context.read<SliderBloc>().add(const GetHomePageSlider());
    context.read<ProductCategoryBloc>().add(const GetProductCategories());
    context
        .read<FeaturedCategoryListBloc>()
        .add(const GetFeaturedCategoryList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, isScolled) {
            return [
              const SliverToBoxAdapter(
                child: HomePageAppBar(),
              ),
              SliverPersistentHeader(
                delegate: HomeAppbarDelegate(),
                floating: true,
                pinned: true,
              )
            ];
          },
          //========================================== body =========================================
          body: RefreshIndicator(
            onRefresh: () async {
              refresh();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: ColorManager.white,
              ),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: BlocBuilder<NetworkConnectionBloc,
                        NetworkConnectionState>(
                      builder: (context, state) {
                        if (state is ConnectionFailure) {
                          return const NoConnection();
                        } else {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // ===================================== slider =================================
                                Padding(
                                  padding: EdgeInsets.only(left: 0.0),
                                  child: HomepageSlider(),
                                ),
                                // ===================================== category slider ===========================
                                SizedBox(
                                  height: 20,
                                ),
                                HomepagecategorySlider(),
                                SizedBox(
                                  height: 20,
                                ),

                                FeaturedMenuList(),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeAppbarDelegate extends SliverPersistentHeaderDelegate {
  HomeAppbarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ColorManager.primary,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
              top: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: true,
                    onTap: () {
                      context.push(AppRoutes.searchPageRoute);
                    },
                    decoration: InputDecoration(
                      fillColor: ColorManager.white,
                      suffixIcon: Container(
                          padding: const EdgeInsets.all(14),
                          child: const Icon(Icons.search)),
                      hintText: "Search for brands, categories, instruments",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 16,
                          color: ColorManager.hintColor,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        borderSide: BorderSide(
                            color: ColorManager.transparent,
                            width: AppSize.s1_5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        borderSide: BorderSide(
                            color: ColorManager.transparent,
                            width: AppSize.s1_5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/manager/text_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/loading_shimmer/search_simmer.dart';
import 'package:guitar_shop/features/homepage/item_widgets/category_item.dart';
import 'package:guitar_shop/features/homepage/item_widgets/featured_product_item.dart';
import 'package:guitar_shop/features/search/search_page/search_category/search_category_bloc.dart';
import 'package:guitar_shop/features/search/search_page/search_product/search_product_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Timer? _debounce;
  String searchText = "";
  final TextEditingController _searchController = TextEditingController();

  final _scrollController = ScrollController();
  void _onScroll() {
    if (isBottom()) {
      context
          .read<SearchProductBloc>()
          .add(StartProductSearchNextPage(searchText));
    }
  }

  bool isBottom() {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll == (maxScroll);
  }

  @override
  void initState() {
    context.read<SearchProductBloc>().add(const ResetState());
    context.read<SearchCategoryBloc>().add(const ResetSearchCategoryState());
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  onSearch(String query) {
    if (query.isEmpty) {
      context.read<SearchProductBloc>().add(const ResetState());
      context.read<SearchCategoryBloc>().add(const ResetSearchCategoryState());
      setState(() {
        searchText = "";
      });
    } else {
      setState(() {
        searchText = query;
      });
    }
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.length < 2) return;
      context.read<SearchProductBloc>().add(StartProductSearch(query));
      context.read<SearchCategoryBloc>().add(StartCategorySearch(query));
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          leading: BackButton(color: ColorManager.grey),
          elevation: 0,
          backgroundColor: ColorManager.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                splashColor: ColorManager.transparent,
                color: ColorManager.grey,
                onPressed: () {
                  _searchController.clear();
                  context.read<SearchProductBloc>().add(const ResetState());
                  context
                      .read<SearchCategoryBloc>()
                      .add(const ResetSearchCategoryState());
                  setState(() {
                    searchText = "";
                  });
                },
                icon: searchText.isEmpty
                    ? const Icon(Icons.search)
                    : const Icon(Icons.close_rounded),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ],
          title: TextField(
            onChanged: onSearch,
            autofocus: false,
            controller: _searchController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: TextManager.searchHint,
                hintStyle: GoogleFonts.lato(
                    color: ColorManager.hintColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
          )),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //Search category section
            BlocBuilder<SearchCategoryBloc, SearchCategoryState>(
              builder: (context, state) {
                if (state is SearchCategoryLoaded) {
                  if (state.data.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: CustomText(
                                title: TextManager.searchCategoryTitle,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.data.length,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 150,
                                child: CategoryItem(
                                  records: state.data[index],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                } else if (state is SearchProductLoading) {
                  return const CircularProgressIndicator();
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),

            //Search product section
            BlocBuilder<SearchProductBloc, SearchProductState>(
              builder: (context, state) {
                if (state is SearchProductLoaded) {
                  if (state.data.isNotEmpty) {
                    return Container(
                      color: ColorManager.profileBg,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CustomText(
                              title: TextManager.searchItemTitle,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: MasonryGridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              itemCount: state.data.length,
                              itemBuilder: (context, index) {
                                return FeaturedProductItems(
                                  records: state.data[index],
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          )
                        ],
                      ),
                    );
                  } else {
                    return const NoItemWidget();
                  }
                } else if (state is SearchProductLoading) {
                  return const SearchSimmer();
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NoItemWidget extends StatelessWidget {
  final String? msg;
  const NoItemWidget({
    Key? key,
    this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          SvgPicture.asset(AssetManager.svgNoItem),
          const SizedBox(
            height: 40,
          ),
          CustomText(
            title: msg ?? " No item found",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}

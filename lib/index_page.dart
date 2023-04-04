import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/core/helper/bloc/network_connection_bloc.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/data_layer/repository/cart_repository/cart_repository.dart';
import 'package:guitar_shop/data_layer/repository/checkout_repository/checkout_repository.dart';
import 'package:guitar_shop/data_layer/repository/homepage_repository/homepage_repository.dart';
import 'package:guitar_shop/data_layer/repository/user_repository/user_repository.dart';
import 'package:guitar_shop/features/authentication/cubit/auth_cubit.dart';
import 'package:guitar_shop/features/authentication/signup/bloc/signup_bloc.dart';
import 'package:guitar_shop/features/cart/bloc/cart_bloc.dart';
import 'package:guitar_shop/features/chcekout/bloc/checkout_bloc.dart';
import 'package:guitar_shop/features/detail_page/bloc/detail_page_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/bloc/product_category_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_category/bloc/featured_category_list_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/bloc/featured_products_bloc.dart';
import 'package:guitar_shop/features/homepage/widgets/slider/bloc/slider_bloc.dart';
import 'package:guitar_shop/features/item_by_category/bloc/item_by_category_bloc.dart';
import 'package:guitar_shop/features/landing/bottom_nav_cubit/bottom_nav_cubit_cubit.dart';
import 'package:guitar_shop/features/order/bloc/order_bloc.dart';
import 'package:guitar_shop/features/profile/address/bloc/user_address_bloc.dart';
import 'package:guitar_shop/features/profile/bloc/profile_bloc.dart';
import 'package:guitar_shop/features/search/search_page/search_category/search_category_bloc.dart';
import 'package:guitar_shop/features/search/search_page/search_product/search_product_bloc.dart';

import 'core/app_controller/router/router_manager.dart';
import 'data_layer/repository/auth_repository/auth_repository.dart';
import 'features/authentication/login/bloc/login_bloc.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
        providers: [
          BlocProvider<BottomNavCubit>(
            create: (context) => BottomNavCubit(),
          ),
          BlocProvider<NetworkConnectionBloc>(
            create: (context) => NetworkConnectionBloc(),
          ),
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(),
          ),
          BlocProvider(
            create: (_) => LoginBloc(AuthRepository()),
          ),
          BlocProvider(
            create: (_) => ItemByCategoryBloc(HomepageRepository()),
          ),
          BlocProvider(
            create: (_) => SignupBloc(AuthRepository()),
          ),
          BlocProvider<SliderBloc>(
            create: (_) => SliderBloc(HomepageRepository())
              ..add(const GetHomePageSlider()),
          ),
          BlocProvider<ProductCategoryBloc>(
            create: (_) => ProductCategoryBloc(HomepageRepository())
              ..add(const GetProductCategories()),
          ),
          BlocProvider<FeaturedProductsBloc>(
            create: (_) => FeaturedProductsBloc(HomepageRepository())
              ..add(const GetFeaturedProducts()),
          ),
          BlocProvider<FeaturedCategoryListBloc>(
            create: (_) => FeaturedCategoryListBloc(HomepageRepository())
              ..add(const GetFeaturedCategoryList()),
          ),
          BlocProvider<CartBloc>(
            create: (_) => CartBloc(CartRepository())..add(const GetUserCart()),
          ),
          BlocProvider<UserAddressBloc>(
            create: (_) =>
                UserAddressBloc(UserRepository())..add(const GetUserAddress()),
          ),
          BlocProvider<CheckoutBloc>(
            create: (_) => CheckoutBloc(CheckoutRepository()),
          ),
          BlocProvider<OrderBloc>(
            create: (_) =>
                OrderBloc(UserRepository())..add(const GetAllOrders()),
          ),
          BlocProvider<SearchProductBloc>(
            create: (_) => SearchProductBloc(HomepageRepository()),
          ),
          BlocProvider<SearchCategoryBloc>(
            create: (_) => SearchCategoryBloc(HomepageRepository()),
          ),
          BlocProvider<ProfileBloc>(
            create: (_) => ProfileBloc(),
          ),
          BlocProvider<DetailPageBloc>(
            create: (_) => DetailPageBloc(HomepageRepository()),
          ),
        ],
        child: MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: ColorManager.white,
            primarySwatch: buildMaterialColor(ColorManager.primary),
          ),
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          routeInformationProvider: router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
        ));
  }
}

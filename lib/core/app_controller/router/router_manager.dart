import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/features/authentication/forgot_password/forgot_password_page.dart';
import 'package:guitar_shop/features/authentication/login/login_page/login_page.dart';
import 'package:guitar_shop/features/authentication/otp/otp_page/otp_page.dart';
import 'package:guitar_shop/features/authentication/signup/signup_page/signup_page.dart';
import 'package:guitar_shop/features/chcekout/checkout.dart';
import 'package:guitar_shop/features/chcekout/entities/cart_totall_model.dart';
import 'package:guitar_shop/features/chcekout/payment/checkout_payment.dart';
import 'package:guitar_shop/features/detail_page/detail_page.dart';
import 'package:guitar_shop/features/detail_page/image_zoom_in.dart';
import 'package:guitar_shop/features/homepage/widgets/category_slider/entitiies/category_model.dart';
import 'package:guitar_shop/features/homepage/widgets/featured_product/entities/product_model.dart';
import 'package:guitar_shop/features/item_by_category/item_by_category.dart';
import 'package:guitar_shop/features/landing/landing_page.dart';
import 'package:guitar_shop/features/order/entitites/order_model.dart';
import 'package:guitar_shop/features/order/order_detail/order_detail.dart';
import 'package:guitar_shop/features/profile/profile_sections/about_page.dart';
import 'package:guitar_shop/features/profile/profile_sections/manage_address/add_address.dart';
import 'package:guitar_shop/features/profile/profile_sections/manage_address/manage_address.dart';
import 'package:guitar_shop/features/search/search_page/search_page.dart';
import 'package:guitar_shop/features/tuner/tuner_page.dart';
import 'package:guitar_shop/splash.dart';
import '../route_animation_handler/costume_page_route.dart';

class AppRoutes {
  static const splashPageRoute = '/splashPage';
  static const loginPageRoute = '/loginPage';
  static const signUpPageRoute = '/signUpPage';
  static const otpPageRoute = '/otpPage';
  static const landingPageRoute = '/landingPage';
  static const forgotPasswordPageRoute = '/forgotPasswordPage';
  static const detailPageRoute = '/detailPage';
  static const orderDetailPageRoute = '/orderDetailPage';
  static const aboutPageRoute = '/aboutPage';
  static const searchPageRoute = '/searchPage';
  static const itemByCatePageRoute = '/itemByCatePage';
  static const checkOutPageRoute = '/checkOutPage';
  static const checkoutPaymentPageRoute = '/checkoutPaymentPage';
  static const manageUserAddressPageRoute = '/manageUserAddressPage';
  static const addAddressPageRoute = '/addAddressPage';
  static const tunnerPageRoute = '/tunnerPage';
  static const imageZoomInPageRoute = '/imageZoomInPage/:position';
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

final router = GoRouter(
  navigatorKey: NavigationService.navigatorKey,
  initialLocation: AppRoutes.splashPageRoute,
  routes: [
    GoRoute(
      name: "splah",
      path: AppRoutes.splashPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: SplashPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "login",
      path: AppRoutes.loginPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: LoginPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "sign up",
      path: AppRoutes.signUpPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight<void>(
        context: context,
        state: state,
        child: SignUpPage(
          key: state.pageKey,
        ),
      ),
    ),
    GoRoute(
      name: "otp",
      path: AppRoutes.otpPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: OtpPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "landing",
      path: AppRoutes.landingPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: NavigationHandlerPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "forgot password",
      path: AppRoutes.forgotPasswordPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: ForgotPasswordPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "detail page",
      path: AppRoutes.detailPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: DetailPage(
            records: state.extra as ProductModel,
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "order detail page",
      path: AppRoutes.orderDetailPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: OrderDetail(
            order: state.extra as OrderModel,
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "about page",
      path: AppRoutes.aboutPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: AboutPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "search page",
      path: AppRoutes.searchPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: SearchPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "item by category",
      path: AppRoutes.itemByCatePageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: ItemByCategory(
            categoryModel: state.extra as CategoryModel,
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "checkout page",
      path: AppRoutes.checkOutPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: CheckOutPage(
            cartTotalModel: state.extra as CartTotalModel,
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "checkout payment page",
      path: AppRoutes.checkoutPaymentPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: CheckOutPayment(
            totalPrice: state.extra as double,
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "manage user address page",
      path: AppRoutes.manageUserAddressPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: ManageUserAddress(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: " add address page",
      path: AppRoutes.addAddressPageRoute,
      pageBuilder: (context, state) => buildPageWithSlideRight(
          context: context,
          state: state,
          child: AddAddressPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "tunner page",
      path: AppRoutes.tunnerPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: TunnerPage(
            key: state.pageKey,
          )),
    ),
    GoRoute(
      name: "interactive image page",
      path: AppRoutes.imageZoomInPageRoute,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: ImageZoomPage(
            images: state.extra as List<String>,
            position: state.params["position"] as String,
            key: state.pageKey,
          )),
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(
      key: state.pageKey,
      child: const Scaffold(
        body: Center(
          child: Text("Wrong route"),
        ),
      ),
    );
  },
);

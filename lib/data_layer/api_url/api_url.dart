class ApiUrl {
  //base url
  static const String baseUrl = "http://172.16.101.202";

  //Auth
  //login
  static const String loginUrl = "$baseUrl/web/session/authenticate";
  static const String signUpUrl = "$baseUrl/user/signup";
  static const String logOutUrl = "$baseUrl/web/session/destroy";

  //user

  static const String userAddressUrl = "$baseUrl/user/address-list";
  static const String addUserAddressUrl = "$baseUrl/user/add-address";
  static const String updateUserAddressUrl = "$baseUrl/user/update-address";

  //unauthenticate url
  static const String openUrl = "$baseUrl/api/v1/public/dataset/search_read";
  static const String cartUrl = "$baseUrl/web/dataset/search_read";
  static const String addTocart = "$baseUrl/shop/cart/update_json";

  //add delivery method
  static const String addDeliveryMethod = "$baseUrl/shop/carrier_rate_shipment";

  //checkout
  static const String checkoutUrl = "$baseUrl/checkout";
}

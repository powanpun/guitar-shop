import 'package:guitar_shop/features/cart/entities/cart_model.dart';

class CartTotalModel {
  final double totalPrice;
  final double totalTaxPrice;
  final List<CartModel> cart;

  CartTotalModel(this.totalPrice, this.totalTaxPrice, this.cart);
}

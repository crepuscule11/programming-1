import 'package:flutter_cart/flutter_cart.dart';
import 'package:goldengate_mobile/expirement/model/cart_singleton.dart';
import 'package:goldengate_mobile/model/cartmodel.dart';

class CartController {
  static FlutterCart cart = FlutterCart();

  static void addToCart(Datum product) {
    CartSingleton.datum.add(product);
  }

  static void removeFromCart(Datum product) {
    CartSingleton.datum.remove(product);
  }

  static void updateCount(int index, int newCount, double newPrice) {
    CartSingleton.datum[index].count = newCount;
    CartSingleton.datum[index].sellingPrice = newPrice.toStringAsFixed(2);
    // update the selling price based on the new price
  }
}

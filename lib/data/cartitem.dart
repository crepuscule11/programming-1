// import 'package:flutter/material.dart';
// import 'package:goldengate_mobile/model/cartmodel.dart';
// class CartProvider with ChangeNotifier {
//   final Map<String, Datum> _cartItems = {};

//   Map<String, Datum> get cartItems {
//     return {..._cartItems};
//   }

//   int get itemCount {
//     return _cartItems.length;
//   }

//   void reduceItem(
//     String? productId,
//     String? productName,
//     int? quantity,
//     double? selling_price
//   ) {
//     if (quantity == 1) {
//       _cartItems.remove(productId);
//       notifyListeners();
//     } else {
//       _cartItems.update(
//         productId,
//         (cartItem) => Datum(productName, cartItem.quantity - 1,
//             cartItem.sellingPrice, criticalLevel: '', description: '', productImg: '', prescribe: '', productName: '', productId: '', ),
//       );

//       notifyListeners();
//     }
//   }

//   void addItem(String productId, String productName, double price) {
//     if (_cartItems.containsKey(productId)) {
//       //add quantity
//       _cartItems.update(productId, (existingCartItem) {
//         return Datum(
//             existingCartItem.productId,
//             existingCartItem.productName,
//             existingCartItem.quantity + 1,
//             existingCartItem.sellingPrice,
//             existingCartItem.imageName);
//       });
//     }
//     notifyListeners();
//   }

//   void addToCart(String productId, String productName, int quantity,
//       double sellingPrice, String img) {
//     _cartItems.putIfAbsent(
//       productId,
//       () => Products(productId, productName, 1,sellingPrice, img, data: [], message: '', status: null),
//     );
//     notifyListeners();
//   }

//   double get totalAmount {
//     var total = 0.0;
//     _cartItems.forEach((key, cartItem) {
//       total += cartItem.sellingPrice* cartItem.qty;
//     });

//     return total;
//   }

//   void removeItem(String productId) {
//     _cartItems.remove(productId);
//     notifyListeners();
//   }
// }
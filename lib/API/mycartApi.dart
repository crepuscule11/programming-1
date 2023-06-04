import 'dart:convert';

import 'package:goldengate_mobile/expirement/model/datamodel/cartitemmodel.dart';
import 'package:http/http.dart' as http;

class MyCartAPI {
  Future<List<CartItem>> getCartItems(int cust_id) async {
    final url = 'http://localhost/gorder/api/cart-items.php?cust_id=$cust_id';

    final response = await http.post(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List<dynamic>;
      final cartItems =
          jsonList.map((json) => CartItem.fromJson(json)).toList();
      return cartItems;
    } else {
      throw Exception('Failed to load cart items');
    }
  }
}

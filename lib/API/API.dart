import 'dart:convert';

import '../model/cartmodel.dart';
import 'package:http/http.dart' as http;

class ProductAPI {
  static var img;

  Future<List<Products>> getProductDetails(
      String name, String sellingPrice, String data) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    final msg = jsonEncode(
        {'img': img, 'name': name, 'id': data, 'sellingPrice': sellingPrice});
    print("$name $sellingPrice");
    final response = await http.get(
      Uri.parse('http://gorder.website/API/products.php?id=$data'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<dynamic> productListJson = jsonData['data'];
      List<Products> productList =
          productListJson.map((e) => Products.fromJson(e)).toList();
      return productList;
    } else {
      throw Exception('Failed to load data');
    }
  }
}

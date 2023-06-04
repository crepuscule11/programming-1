import 'package:goldengate_mobile/model/cartmodel.dart';
import "package:http/http.dart" as http;

class addToCartAPI {
  List<Products> datum = [];
  List<Datum> productId = [];
  addToCartAPI(productId, prod);

  Future addToCart(int productId, int customerId) async {
    final AddTOCartUrl = Uri.parse(
        'http://localhost/gorder/api/add-to-cart.php?product_id=11111112d&cust_id=917193');

    final response = await http.get(
      AddTOCartUrl,
    );

    if (response.statusCode == 200) {
      // Success
      print('Product added to cart!');
    } else {
      // Error
      print('Failed to add product to cart');
    }
  }
}

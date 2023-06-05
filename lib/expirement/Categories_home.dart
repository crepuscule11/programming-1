// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:get/get.dart';
import 'package:goldengate_mobile/API/API.dart';
import 'package:goldengate_mobile/API/addToCart.dart';
import 'package:goldengate_mobile/data/cartitem.dart';
import 'package:goldengate_mobile/expirement/Categories_Details.dart';
import 'package:goldengate_mobile/expirement/cart_screen.dart';
import 'package:goldengate_mobile/expirement/model/cart_singleton.dart';
import 'package:goldengate_mobile/expirement/model/datamodel/userId_data.dart';
import 'package:goldengate_mobile/model/cartmodel.dart';
import 'package:goldengate_mobile/model/category_model.dart';
import 'package:goldengate_mobile/model/controller.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/login_screen.dart';
import 'bottom_bar.dart';

class Category extends StatefulWidget {
  final String id;
  final dynamic data;
  final UserId? userId;

  const Category({
    Key? key,
    required this.id,
    required this.data,
    required this.userId,
  }) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  String name = "";
  String img = "";
  String sellingPrice = "";

  List<Datum> datum = [];

  bool isItemAddedToCart = false;

  late Future<List<Products>> productFuture;

  int index = 0;

  Future<List<Products>> getProductDetails(
      String name, String data, String img, String? userId) async {
    String url = "http://gorder.website/API/products.php?id${widget.data}";
    print(url);
    print("userId2 =${widget.data}");

    Map<String, String> headers = {'Content-Type': 'application/json'};
    final msg = jsonEncode({});

    final response = await http.get(
      Uri.parse(
        'http://gorder.website/API/products.php?id=${widget.data}',
      ),
      headers: headers,
    );

    // ignore: curly_braces_in_flow_control_structures
    if (mounted) if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      Products product = Products.fromJson(jsonData);

      setState(() {
        datum = product.data;
        return;
      });
    } else {
      setState(() {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        String mess = jsonMap['message'];

        print(url);
        print(mess);
        print("failed");
        return;
      });
      throw Exception('failed');
    }
    throw Exception('failed to load data');
  }

  void _addToCart(Datum product) {
    setState(() {
      CartSingleton.datum.add(product);

      print("Added to Cart");
    });
  }

  @override
  void initState() {
    productFuture =
        getProductDetails(name, sellingPrice, img, widget.userId?.data);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int _count = 0;
    bool isItemAddedToCart = false;
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 15.0, bottom: 30.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 30.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  ...datum.map(
                    (e) => _buildCard(
                        ' ${e.productName}',
                        '₱ ${e.sellingPrice}',
                        'img: ${e.productImg}',
                        false,
                        false,
                        context),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String sellingPrice, String img, bool added,
      bool isFavorite, context) {
    final heroTag = '${img}_$index'; // Generate a unique tag for this image
    final imageUrl = Datum(
            productImg: img,
            count: null,
            vatable: '',
            criticalLevel: '',
            description: '',
            prescribe: '',
            productId: '',
            productName: '',
            quantity: null,
            sellingPrice: '',
            unitMeasurement: '')
        .getImageUrl();

    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () async {
              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     builder: ((context) => ProductDetail(
              //         sellingPrice: sellingPrice,
              //         img: imageUrl,
              //         name: name,
              //         heroTag: heroTag))));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(
                        5.0,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Colors.blue)
                                : Icon(Icons.favorite_border,
                                    color: Color.fromARGB(255, 22, 12, 82))
                          ])),
                  Hero(
                    tag: heroTag,
                    child: Container(
                      child: Image.network(
                        imageUrl, // Remove the 'img: ' prefix from the URL
                        height: 100.0,
                        width: 75.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(sellingPrice,
                      style:
                          TextStyle(color: Color(0xFFCC8053), fontSize: 14.0)),
                  Text(name,
                      style:
                          TextStyle(color: Color(0xFF575E67), fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: InkWell(
                          onTap: getProductDetails == null
                              ? null
                              : () async {
                                  setState(() {
                                    _addToCart(Datum(
                                        productName: name,
                                        productImg: img,
                                        sellingPrice: sellingPrice,
                                        criticalLevel: '',
                                        prescribe: '',
                                        description: '',
                                        unitMeasurement: '',
                                        productId: '',
                                        vatable: '',
                                        quantity: null,
                                        count: index));
                                    print('$name $img $sellingPrice');
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Item Addedd to Cart!"),
                                    ));
                                  });
                                },
                          child: Text('Add to cart'))),
                ]))));
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

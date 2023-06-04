// // ignore_for_file: unused_import, prefer_typing_uninitialized_variables

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:goldengate_mobile/User/confirmOrder.dart';
// import 'package:goldengate_mobile/expirement/Categories_home.dart';
// import 'package:goldengate_mobile/expirement/bottom_bar.dart';
// import 'package:goldengate_mobile/expirement/cart_screen.dart';
// import 'package:goldengate_mobile/expirement/checkout_screen.dart';
// import 'package:goldengate_mobile/expirement/model/datamodel/cartitemmodel.dart';
// import 'package:goldengate_mobile/expirement/model/datamodel/myCartmodel.dart';
// import 'package:goldengate_mobile/expirement/model/datamodel/userId_data.dart';
// import 'package:goldengate_mobile/screens/Homepage.dart';

// import '../model/cartmodel.dart';
// import 'model/cart_singleton.dart';
// import 'package:http/http.dart' as http;

// class ProductDetail extends StatefulWidget {
//   // final Products product;

//   final img, sellingPrice, name, cust_Id;

//   const ProductDetail({
//     Key? key,
//     this.img,
//     this.sellingPrice,
//     this.name,
//     this.cust_Id,
//     required String heroTag,
//     // required this.product,
//   }) : super(key: key);

//   @override
//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }

// // Future<List<Mycart>> addToCart( selectedProduct, int customerId) async {
// //   Map<String, String> headers = {'Content-Type': 'application/json'};
// //   var sellingPrice;
// //   final msg = jsonEncode({
// //     'productId': selectedProduct,
// //     'id': customerId,
// //     'sellingPrice': sellingPrice,
// //   });
// //   final productId = selectedProduct.productId;
// //   const url =
// //       'http://localhost/gorder/api/add-to-cart.php?product_id=$&cust_id=300672';
// //   final response = await http.post(Uri.parse(url));
// //   if (response.statusCode == 200) {
// //     // Cart updated successfully
// //   } else {
// //     throw Exception('Failed to add product to cart');
// //   }
// // }

// class _ProductDetailState extends State<ProductDetail> {
//   List<Datum> datum = [];
//   late List<Datum> cart;
//   int cust_Id = 0;

//   get product_Id => null;

//   get selling_price => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//           onPressed: () {
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: ((context) => MyHomePage(
//                       id: '', data: '',
//                     ))));
//           },
//         ),
//         title: const Text('Details',
//             style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
//         actions: <Widget>[
//           IconButton(
//             icon:
//                 const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(children: [
//         const SizedBox(height: 15.0),
//         const Padding(
//           padding: EdgeInsets.only(left: 20.0),
//           child: Text('Description',
//               style: TextStyle(
//                   fontSize: 42.0,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFFF17532))),
//         ),
//         const SizedBox(height: 15.0),
//         Hero(
//           tag: '${widget.img}_1',
//           child: Image.network(
//             widget.img, // Use widget.img as the URL
//             height: 150.0,
//             width: 100.0,
//             fit: BoxFit.contain,
//           ),
//         ),
//         const SizedBox(height: 20.0),
//         Center(
//           child: Text(widget.sellingPrice,
//               style: const TextStyle(
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFFF17532))),
//         ),
//         const SizedBox(height: 10.0),
//         Center(
//           child: Text('${widget.name}_2',
//               style: const TextStyle(color: Color(0xFF575E67), fontSize: 24.0)),
//         ),
//         const SizedBox(height: 20.0),
//         Center(
//           child: Container(
//             width: MediaQuery.of(context).size.width - 50.0,
//             child: const Text('',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16.0, color: Color(0xFFB4B8B9))),
//           ),
//         ),
//         const SizedBox(height: 20.0),
//         GestureDetector(
//             onTap: () {
//               //  setState(() async {
//               //     CartItem(
//               //       customerId: cust_Id,
//               //       productId: product_Id,
//               //       sellingPrice: selling_price);
//               //   await addToCart(product_Id, cust_Id);
//               //   print("$product_Id $cust_Id");
//               //   print("$Error");
//               //  });
//             },
//             child: Container(
//                 width: MediaQuery.of(context).size.width - 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25.0),
//                     color: Colors.lightBlue),
//                 child: const Center(
//                     child: Text(
//                   'Add to cart',
//                   style: TextStyle(
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 )))),
//       ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).pushReplacement(MaterialPageRoute(
//               builder: ((context) => Category(
//                     id: '',
//                     data: '', userId: null,
//                   ))));
//         },
//         backgroundColor: Colors.blue,
//         child: const Icon(Icons.local_hospital),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }

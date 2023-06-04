// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:goldengate_mobile/User/confirmOrder.dart';
// import 'package:goldengate_mobile/expirement/Categories_Details.dart';
// import 'package:goldengate_mobile/expirement/checkout_screen.dart';

// import 'package:goldengate_mobile/model/cartmodel.dart';
// import 'package:goldengate_mobile/model/category_model.dart';
// import 'package:goldengate_mobile/expirement/Categories_home.dart';
// import 'package:goldengate_mobile/model/controller.dart';
// import 'package:get/get.dart';
// import 'package:goldengate_mobile/screens/Homepage.dart';
// import 'package:provider/provider.dart';
// import 'bottom_bar.dart';
// import 'model/cart_singleton.dart';

// class CartList extends StatefulWidget {
//   static const id = '/cart';
//   CartList({
//     Key? key,
//   }) : super(key: key);
//   bool isInCart(Datum state, String id) {
//     final List<Datum> cart = state.sellingPrice as List<Datum>;
//     return cart.indexWhere((cart) => cart.catId == id) > -1;
//   }

//   @override
//   _CartListState createState() => _CartListState();
// }

// class _CartListState extends State<CartList> {
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'My Cart',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//           onPressed: () {
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: ((context) => MyHomePage(
//                       id: '',
//                       data: '',
//                     ))));
//           },
//         ),
//       ),
//       body: CartSingleton.datum.isEmpty
//           ? Center(
//               child: Text('Your cart is empty.'),
//             )
//           : Column(children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: CartSingleton.datum.length,
//                   itemBuilder: (context, index) {
//                     final item = CartSingleton.datum[index];
//                     return Container(
//                       margin: EdgeInsets.only(bottom: 8),
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.white.withOpacity(0.5),
//                             spreadRadius: 2,
//                             blurRadius: 5,
//                             offset: Offset(0, 3),
//                           ),
//                         ],
//                       ),
//                       child: Card(
//                         child: ListTile(
//                           title: Text(item.productName),
//                           subtitle: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 15),
//                               Text(item.sellingPrice.toString()),
//                             ],
//                           ),
//                           leading: Container(
//                             height: 80,
//                             width: 50,
//                             child: Image.network(
//                               item.productImg,
//                             ),
//                           ),
//                           trailing: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               IconButton(
//                                 icon: Icon(
//                                   Icons.add_rounded,
//                                   color: Colors.black,
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     int index =
//                                         CartSingleton.datum.indexOf(item);
//                                     int newCount = item.count! + 1;
//                                     double newPrice =
//                                         (item.sellingPrice.toString() *
//                                             newCount) as double;
//                                     CartController.updateCount(
//                                         index, newCount, newPrice);
//                                   });
//                                 },
//                               ),
//                               Text('$_count'),
//                               IconButton(
//                                 icon: Icon(
//                                   Icons.remove_rounded,
//                                   color: Colors.black,
//                                 ),
//                                 onPressed: () {
//                                   {
//                                     setState(() {
//                                       var product;
//                                       CartSingleton.datum
//                                           .remove(product[index]);
//                                     });
//                                   }
//                                 },
//                               ),
//                               IconButton(
//                                 icon: Icon(Icons.delete),
//                                 onPressed: () {
//                                   setState(() {
//                                     CartSingleton.datum.removeAt(index);
//                                   });
//                                   ScaffoldMessenger.of(context)
//                                       .showSnackBar(SnackBar(
//                                     content: Text("Item Deleted Successfully"),
//                                   ));
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               )
//             ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           Navigator.of(context).pushReplacement(
//               MaterialPageRoute(builder: ((context) => CheckoutScreen())));
//         },
//         backgroundColor: Colors.blue,
//         child: Icon(Icons.home),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }

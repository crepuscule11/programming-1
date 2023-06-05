// import 'dart:convert';

// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:goldengate_mobile/expirement/bottom_bar.dart';
// import 'package:goldengate_mobile/expirement/Categories_home.dart';
// import 'package:goldengate_mobile/expirement/model/datamodel/userId_data.dart';
// import 'package:goldengate_mobile/model/cartmodel.dart';
// import 'package:goldengate_mobile/screens/login_screen.dart';
// import 'package:http/http.dart' as http;

// import '../data/CartItem.dart';
// import '../expirement/Categories_Details.dart';

// class MyHomePage extends StatefulWidget {
//   final String id;
//   final UserId userId;

//   const MyHomePage({Key? key, required this.id, required String data, required this.userId}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   String name = "";
//   String img = "";
//   String sellingPrice = "";
//   String id = "dcasdsa";
//   List<Datum> datum = [];

//   late Future<List<Products>> productFuture;

//   int index = 0;
  
//   get userId => null;

//   // Future<List<Products>> getProductDetails(String name) async {
//   //   Map<String, String> headers = {'Content-Type': 'application/json'};
//   //   final msg = jsonEncode({'img': img, 'name': name});
//   //   print("$name $sellingPrice");
//   //   final response = await http.get(
//   //     Uri.parse(
//   //         'http://192.168.100.2/Gorder/API/products.php?id=917193&pro_search=$name'),
//   //     headers: headers,
//   //   );

//   //   if (response.statusCode == 200) {
//   //     final jsonData = json.decode(response.body);
//   //     Products product = Products.fromJson(jsonData);

//   //     setState(() {
//   //       datum = product.data;

//   //       return;
//   //     });
//   //   } else {
//   //     setState(() {
//   //       print("failed");
//   //       return;
//   //     });
//   //     throw Exception('failed to load data');
//   //   }
//   //   return productFuture;
//   // }

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 4, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Color(0xFF545D68),
//           ),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => LoginScreen(
//                       id: '',
//                     )));
//           },
//         ),
//         title: Text('Golden Gate',
//             style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search, color: Color(0xFF545D68)),
//             onPressed: () {
//               showSearch(context: context, delegate: CustomSearchDelegate());
//             },
//           ),
//           Center(
//             child: const Badge(
//               badgeContent: Text('0'),
//               child: Icon(
//                 Icons.shopping_cart,
//                 color: Color(0xFF545D68),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: EdgeInsets.only(left: 20.0),
//         children: <Widget>[
//           SizedBox(height: 15.0),
//           Text('Categories',
//               style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold)),
//           SizedBox(height: 15.0),
//           TabBar(
//               controller: _tabController,
//               indicatorColor: Colors.transparent,
//               labelColor: Color(0xFFC88D67),
//               isScrollable: true,
//               labelPadding: EdgeInsets.only(right: 45.0),
//               unselectedLabelColor: Color(0xFFCDCDCD),
//               tabs: [
//                 Tab(
//                   child: Text('Branded',
//                       style: TextStyle(
//                         fontSize: 21.0,
//                       )),
//                 ),
//                 Tab(
//                   child: Text('Generic',
//                       style: TextStyle(
//                         fontSize: 21.0,
//                       )),
//                 ),
//                 Tab(
//                   child: Text('Consumer Goods',
//                       style: TextStyle(
//                         fontSize: 21.0,
//                       )),
//                 ),
//                 Tab(
//                   child: Text('Sari-sari',
//                       style: TextStyle(
//                         fontSize: 21.0,
//                       )),
//                 ),
//               ]),
//           Container(
//               height: MediaQuery.of(context).size.height - 50.0,
//               width: double.infinity,
//               child: TabBarView(controller: _tabController, children: [
//                 Category(
//                   id: '',
//                   data: '', userId: userId,
//                 ),
//                 Category(
//                   id: '',
//                   data: '', userId: userId,
//                 ),
//                 Category(
//                   id: '',
//                   data: '',userId: userId,
//                 ),
//                 Category(
//                   id: '',
//                   data: '',userId: userId
//                 ),
//               ]))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           if (name.length > index) {
//             Datum(
//                 criticalLevel: index.toString(),
//                 description: index.toString(),
//                 productId: index.toString(),
//                 prescribe: index.toString(),
//                 productName: name[index].toString(),
//                 productImg: img[index].toString(),
//                 sellingPrice: sellingPrice[index],
//                 unitMeasurement: index.toString(),
//                 vatable: index.toString(),
//                 quantity: index.toDouble(),
//                 catId: index.toString(),
//                 count: index);
//             print('$datum');
//           } else {
//             print("$Error");
//           }
//           ;
//         },
//         backgroundColor: Colors.blue,
//         child: Icon(Icons.home),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }

// class CustomSearchDelegate extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(Object context) {
//     return [
//       IconButton(
//           icon: Icon(Icons.close),
//           onPressed: (() {
//             query = " ";
//           }))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back_ios),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Center(
//       child: Text('Search Product'),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Center(
//       child: Text('Search Product'),
//     );
//   }
// }

// // ignore: non_constant_identifier_names




// class Product {
//   final String name;
//   final String price;
//   final String description;
//   final String id;
//   final String img;

//   Product(
//       {required this.name,
//       required this.price,
//       required this.description,
//       required this.id,
//       required this.img});
//   factory Product.fromJson(dynamic json) {
//     return Product(
//         name: json['productNname'] as String,
//         price: json['sellingPrice'] as String,
//         description: json['description'] as String,
//         id: json['id'],
//         img: json[0]['image']['product_img']);
//   }

//   static List<Product> productFromSnapshot(List snapshop) {
//     return snapshop.map((data) {
//       return Product.fromJson(data);
//     }).toList();
//   }
// }

// @override
// String toString() {
//   var name;
//   var image;
//   var price;
//   var id;
//   return 'Product {name: $name, price: $image, price: $price, id: $id}';
// }

// enum ProductImg { PRODUCT_DEFAULT_IMG_PNG }

// final productImgValues =
//     EnumValues({"product_default_img.png": ProductImg.PRODUCT_DEFAULT_IMG_PNG});

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

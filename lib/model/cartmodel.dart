// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  // ignore: prefer_typing_uninitialized_variables
  var productImg;

  Products({
    required this.status,
    required this.message,
    required this.data,
    this.cart = const [],
  });

  int status;
  String message;
  List<Datum> data;
  List<Datum> cart;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        status: json["status"],
        message: json["message"],
        data: json["data"] != null
            ? List<Datum>.from(json["data"].map((x) => Datum.fromJson(x)))
            : [],
      );
  get sellingPrice => null;

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  // ignore: prefer_typing_uninitialized_variables
  var quantity;
  int? count;

  Datum({
    required this.productName,
    required this.productId,
    this.productCode,
    required this.unitMeasurement,
    required this.sellingPrice,
    this.catId,
    this.subcatId,
    required this.description,
    required this.criticalLevel,
    required this.productImg,
    required this.prescribe,
    required this.quantity,
    required this.vatable,
    required this.count,
  });

  String productId;
  String? productCode;
  String productName;
  String? unitMeasurement;
  dynamic sellingPrice;
  String? catId;
  String? subcatId;
  String? description;
  String? criticalLevel;
  String productImg;
  String? prescribe;
  String? vatable;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        productId: json["product_id"],
        productCode: json["product_code"],
        productName: json["product_name"],
        unitMeasurement: json["unit_measurement"],
        sellingPrice: json["selling_price"],
        catId: json["cat_id"],
        subcatId: json["subcat_id"],
        description: json["description"],
        criticalLevel: json["critical_level"],
        productImg: json["product_img"],
        prescribe: json["prescribe"],
        vatable: json["vatable"],
        quantity: json['quantity'],
        count: json['count'],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_code": productCode,
        "product_name": productName,
        "unit_measurement": unitMeasurement,
        "selling_price": sellingPrice,
        "cat_id": catId,
        "subcat_id": subcatId,
        "description": description,
        "critical_level": criticalLevel,
        "product_img": productImg,
        "prescribe": prescribe,
        "vatable": vatable,
        "quantity": quantity,
        "count": count,
      };
  String getImageUrl() {
    if (productImg.startsWith('img: ')) {
      return productImg.substring(5); // Remove the 'img: ' prefix
    }
    return productImg;
  }
}

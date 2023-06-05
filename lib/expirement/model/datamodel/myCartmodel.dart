class Mycart {
  int? id;
  int? productId;
  String productName;
  String productImg;
  String unitMeasurement;
  int quantity;
  String sellingPrice;

  Mycart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.productImg,
    required this.unitMeasurement,
    required this.quantity,
    required this.sellingPrice,
  });

  factory Mycart.fromJson(Map<String, dynamic> json) {
    return Mycart(
      id: json['id'],
      productId: json['product_id'],
      productName: json['product_name'],
      productImg: json['product_img'],
      unitMeasurement: json['unit_measurement'],
      quantity: json['quantity'],
      sellingPrice: json['selling_price'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_img'] = this.productImg;
    data['unit_measurement'] = this.unitMeasurement;
    data['quantity'] = this.quantity;
    data['selling_price'] = this.sellingPrice;
    return data;
  }
}

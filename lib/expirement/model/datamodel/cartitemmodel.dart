class CartItem {
  int productId;
  int customerId;
  double sellingPrice;

  CartItem(
      {required this.productId,
      required this.customerId,
      required this.sellingPrice});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      productId: json['productId'] as int,
      customerId: json['customerId'] as int,
      sellingPrice: json['sellingPrice'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = productId;
    data['customerId'] = customerId;
    data['sellingPrice'] = sellingPrice;
    return data;
  }
}

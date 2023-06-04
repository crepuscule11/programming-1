class Cartmodel {
  final String id;
  final String name;
  final double price;
  final int quantity;

  Cartmodel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
  double get totalPrice => price * quantity;
}

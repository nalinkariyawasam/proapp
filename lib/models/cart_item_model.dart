class CartItemModel {
  int id;
  String name;
  double price;
  int quantity;
  double totalValue;

  CartItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.totalValue,
  });
}

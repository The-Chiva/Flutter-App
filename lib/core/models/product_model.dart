class ProductModel {
  String name;
  double price;
  int qty;
  String image;

  ProductModel({
    required this.name,
    required this.price,
    required this.qty,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      price: json['price'],
      qty: json['qty'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'qty': qty,
      'image': image,
    };
  }
}

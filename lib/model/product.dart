class Products {
  final int id;
  final String name;
  final String category;
  final String imageUrl;
  final int price;

  Products({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
  });

  factory Products.fromJsom(Map<String, dynamic> json) {
    return Products(
      id: json["id"],
      name: json["name"],
      category: json["category"],
      imageUrl: json["image_url"],
      price: json["price"],
    );
  }
}

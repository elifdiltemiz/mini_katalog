class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final String category;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.category,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id:          json['id'],
      title:       json['title'],
      description: json['description'],
      price:       (json['price'] as num).toDouble(),
      thumbnail:   json['thumbnail'],
      category:    json['category'],
      rating:      (json['rating'] as num).toDouble(),
    );
  }
}
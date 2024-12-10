class ProductModel {
  final String description;
  final String category;
  final String title;
  final String price;
  final int id;
  final String image;
  final RatingModel? rate;

  ProductModel(
      {required this.description,
      required this.category,
      required this.title,
      required this.price,
      required this.id,
      required this.image,
      this.rate});
  factory ProductModel.fromJson(json) {
    return ProductModel(
      description: json['description'],
      category: json['category'],
      title: json['title'],
      price: json['price'].toString(),
      id: json['id'],
      image: json['image'],
      rate:
          json['rating'] == null ? null : RatingModel.fromJson(json['rating']),
    );
  }
  @override
  String toString() {
    return 'ProductModel{id: $id, title: $title, price: $price, category: $category, description: $description, image: $image, rating: ${rate.toString()}}';
  }
}

class RatingModel {
  final String? rate;

  final int? count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(json) {
    return RatingModel(
      rate: json['rate'].toString(),
      count: json['count'],
    );
  }
  @override
  String toString() {
    return 'RatingModel{rate: $rate, count: $count}';
  }
}

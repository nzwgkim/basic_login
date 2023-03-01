enum RestaurantPriceRange {
  expensive,
  medium,
  cheap,
}

class RestaurantModel {
  String id;
  String name;
  String thumbUrl;
  List<String> tags;
  String priceRange;
  double ratings;
  int ratingsCount;
  int deliveryTime;
  int deliveryFee;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.thumbUrl,
    required this.tags,
    required this.priceRange,
    required this.ratings,
    required this.ratingsCount,
    required this.deliveryTime,
    required this.deliveryFee,
  });
  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
        id: json['id'],
        name: json['name'],
        thumbUrl: json['thumbUrl'],
        tags: List<String>.from(json['tags']),
        priceRange: json['priceRange'],
        ratings: json['ratings'],
        ratingsCount: json['ratingCount'] ?? 0,
        deliveryTime: json['deliveryTime'] ?? 0,
        deliveryFee: json['deliveryFee'] ?? 0);
  }
}

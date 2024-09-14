import 'package:json_annotation/json_annotation.dart';
part 'get_response_products.g.dart';

@JsonSerializable()
class GetResponseProducts {
  final String id;
  final String title;
  final String description;
  dynamic price;
  final String category;
  final String image;
  final Ratings rating;

  GetResponseProducts({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory GetResponseProducts.fromJson(Map<String, dynamic> json) =>  _$GetResponseProductsFromJson(json);

  Map<String, dynamic> toJson() => _$GetResponseProductsToJson(this);
}

@JsonSerializable()
class Ratings {
  dynamic rate;
  dynamic count;

  Ratings({
    this.rate,
    this.count,
  });

  factory Ratings.fromJson(Map<String, dynamic> json) =>  _$RatingsFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsToJson(this);
}

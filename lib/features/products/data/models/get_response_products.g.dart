// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_response_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetResponseProducts _$GetResponseProductsFromJson(Map<String, dynamic> json) =>
    GetResponseProducts(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'],
      category: json['category'] as String,
      image: json['image'] as String,
      rating: json['rating'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$GetResponseProductsToJson(
        GetResponseProducts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };

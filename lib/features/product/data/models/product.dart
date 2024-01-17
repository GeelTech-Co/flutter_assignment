import 'package:assignment_test/features/product/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.name,
    required super.type,
    required super.price,
    required super.imageUrl,
    required super.related,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      // related: [],
      related: convertListOfProduct(json['related']),
    );
  }
}

class RelatedModel extends Related {
  const RelatedModel({
    required super.id,
    required super.name,
    required super.type,
    required super.price,
    required super.imageUrl,
    
  });

  factory RelatedModel.fromJson(Map<String, dynamic> json) {
    return RelatedModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      // related: [],
      
    );
  }
}

List<RelatedModel> convertListOfProduct(List<dynamic> data) {
  // List<dynamic> jsonData = json.decode(data);
  List<RelatedModel> products =
      data.map((json) => RelatedModel.fromJson(json)).toList();
  return products;
}

class ProductResponseModel extends ProductResponse {
  const ProductResponseModel({
    required super.status,
    required super.message,
    required super.products,
  });

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductResponseModel(
      status: json['status'],
      message: json['message'],
      products:
          List.from(json['data']).map((e) => ProductModel.fromJson(e)).toList(),
    );
  }
}

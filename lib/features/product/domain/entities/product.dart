import 'package:equatable/equatable.dart';
import 'package:assignment_test/features/product/data/models/product.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String type;
  final double price;
  final String imageUrl;
  final List<RelatedModel> related ;

  const Product({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.imageUrl,
    required this.related,
  });

  @override
  List<Object?> get props => [id, name, type, price, imageUrl,related];
}

class Related extends Equatable {
  final int id;
  final String name;
  final String type;
  final double price;
  final String imageUrl;
  

  const Related({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.imageUrl,
    
  });

  @override
  List<Object?> get props => [id, name, type, price, imageUrl];
}

class ProductResponse extends Equatable {
  final int status;
  final String message;
  final List<ProductModel> products;

  

  const ProductResponse({
    required this.status,
    required this.message,
    required this.products,
  });

  @override
  List<Object?> get props => [status, message, products];
}

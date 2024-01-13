
import 'package:equatable/equatable.dart';

class ItemModel extends Equatable {
  const ItemModel({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final List<Datum> data;

  factory ItemModel.fromJson(Map<String, dynamic> json){
    return ItemModel(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }

  @override
  List<Object?> get props => [
    status, message, data, ];
}

class Datum extends Equatable {
  const Datum({
    required this.id,
    required this.name,
    required this.price,
  });

  final int? id;
  final String? name;
  final double? price;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      id: json["id"],
      name: json["name"],
      price: json["price"],
    );
  }

  @override
  List<Object?> get props => [
    id, name, price, ];
}

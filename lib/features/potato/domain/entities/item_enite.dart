import 'package:equatable/equatable.dart';

class Item  extends Equatable {
  final int id;
  final String name;
  final double price;
 const Item({
    required this.id,
    required this.name,
    required this.price,
  });
   @override
  List<Object?> get props => [id, name, price];
}

import 'package:equatable/equatable.dart';

class RelatedItem extends Equatable {
  final int id;
  final String name;
  final double price;

  const RelatedItem({
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  List<Object?> get props => [id, name, price];
}

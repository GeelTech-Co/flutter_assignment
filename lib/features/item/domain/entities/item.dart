import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int id;
  final String name;
  final double price;
  const Item({required this.id, required this.name, required this.price});

  @override
  List<Object> get props => [id, name, price];
}

class ItemWithId extends Equatable {
  final int id;
  final String imageUrl;
  final String type;
  final Related related;
  const ItemWithId({
    required this.id,
    required this.imageUrl,
    required this.related,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        type,
        related,
      ];
}

class Related extends Equatable {
  final int id;
  final String name;
  final double price;
  const Related({required this.id, required this.name, required this.price});

  @override
  List<Object> get props => [id, name, price];
}

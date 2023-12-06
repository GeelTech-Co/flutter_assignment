import 'package:assignment_test/features/potato/domain/entities/item_enite.dart';
import 'package:equatable/equatable.dart';

class ItemData extends Equatable {
 final int statusCode;
  final List<Item> body;

  const ItemData({
    required this.statusCode,
    required this.body,
  });

  @override
  List<Object?> get props => [statusCode, body];
}

import 'package:assignment_test/features/potato/domain/entities/item_enite.dart';
import 'package:equatable/equatable.dart';

class ItemData extends Equatable {
  final List<Item> body;
  const ItemData({
    required this.body,
  });

  @override
  List<Object?> get props => [ body];
}

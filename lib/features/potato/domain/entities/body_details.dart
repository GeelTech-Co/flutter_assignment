
import 'package:assignment_test/features/potato/domain/entities/related_item.dart';
import 'package:equatable/equatable.dart';

class BodyDetails extends Equatable {
  final int id;
  final String imageUrl;
  final String type;
  final List<RelatedItem> related;

  const BodyDetails({
    required this.id,
    required this.imageUrl,
    required this.type,
    required this.related,
  });

  @override
  List<Object?> get props => [id, imageUrl, type, related];
}

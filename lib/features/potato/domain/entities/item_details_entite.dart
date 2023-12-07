import 'package:assignment_test/features/potato/domain/entities/body_details.dart';
import 'package:equatable/equatable.dart';

class ItemDetails extends Equatable {
  final int statusCode;
  final BodyDetails body;
  const ItemDetails({required this.statusCode,required this.body});

  @override
  List<Object?> get props => [ statusCode,body];
}


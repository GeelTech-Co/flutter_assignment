// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_item_domain_repo.dart';
import 'package:dartz/dartz.dart';

class GetItemDetailsUseCase {
  GetItemDetailsDomainRepo getItemsDomainRepo;
  GetItemDetailsUseCase({
    required this.getItemsDomainRepo,
  });
  Future<Either<Failures, Item>> call(int id) => getItemsDomainRepo.getItem(id);
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/domain/repositories/get_items_domain_repo.dart';
import 'package:dartz/dartz.dart';

class GetItemsUseCase {
  GetItemsDomainRepo getItemsDomainRepo;
  GetItemsUseCase({
    required this.getItemsDomainRepo,
  });
  Future<Either<Failures, List<ItemsData>>> call() =>
      getItemsDomainRepo.getItems();
}

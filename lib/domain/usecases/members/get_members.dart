import 'package:getxandhasura/domain/entities/member.dart';
import 'package:getxandhasura/domain/repositories/member_repository.dart';
import 'package:getxandhasura/shared/result.dart';

class GetMembers {
  final MemberRepository _repository;

  GetMembers(this._repository);

  Future<Result<List<Member>>> call() async {
    return _repository.getMembers();
  }
}

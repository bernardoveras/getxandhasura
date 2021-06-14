import 'package:getxandhasura/domain/entities/member.dart';
import 'package:getxandhasura/domain/repositories/member_repository.dart';
import 'package:getxandhasura/shared/result.dart';

class GetMemberById {
  final MemberRepository _repository;

  GetMemberById(this._repository);

  Future<Result<Member>> call(String id) async {
    return _repository.getMemberById(id);
  }
}

import '../entities/member.dart';
import 'package:getxandhasura/shared/result.dart';

abstract class MemberRepository{
  Future<Result<List<Member>>> getMembers();
  Future<Result<Member>> getMemberById(String id);
}
import 'dart:async';

import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/shared/failure.dart';
import 'package:getxandhasura/shared/result.dart';

class MemberRepositoryImpl implements MemberRepository {
  final MemberHasura request;

  MemberRepositoryImpl(this.request);

  @override
  Future<Result<List<Member>>> getMembers() async {
    try {
      final List<Member> members = await request.getMembers();

      return Result.success(members);
    } on TimeoutException {
      return Result.failure(TimeoutFailure());
    } catch (e) {
      return Result.failure(ApiFailure());
    }
  }

  @override
  Future<Result<Member>> getMemberById(String id) async {
    try {
      Member member = await request.getMemberById(id);

      return Result.success(member);
    } on TimeoutException {
      return Result.failure(TimeoutFailure());
    } catch (e) {
      return Result.failure(ApiFailure());
    }
  }
}

import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/features/members/data/repositories/member_repository_impl.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/shared/result.dart';
import 'package:mockito/mockito.dart';
import '../../../../helpers/fixtures/mocks.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MemberRepository repository;
  late MemberHasura api;
  final String id = 'UUID_GENERATOR';

  setUp(() {
    api = MockMemberHasura();
    repository = MemberRepositoryImpl(api);
  });

  group('get members list', () {
    test("should return list of members", () async {
      List<Member> members = getMockMembers();
      when(api.getMembers()).thenAnswer((_) async => members);

      Result result = await repository.getMembers();

      expect(result.data, members);
    });
  });

  group('get member by id', () {
    test("should return member", () async {
      Member member = getMockMember();
      when(api.getMemberById(id)).thenAnswer((_) async => member);

      Result result = await repository.getMemberById(id);

      expect(result.data, member);
    });
  });
}

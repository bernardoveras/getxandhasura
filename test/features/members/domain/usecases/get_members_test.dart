import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_members.dart';
import 'package:getxandhasura/shared/result.dart';
import 'package:mockito/mockito.dart';
import '../../../../helpers/fixtures/mocks.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MemberRepository repository;
  late GetMembers getMembers;

  setUp(() {
    repository = MockMemberRepository();
    getMembers = GetMembers(repository);
  });

  test("should get list of members", () async {
    // arrange
    List<Member> members = getMockMembers();
    when(repository.getMembers()).thenAnswer((_) async => Result.success(members));

    // action
    Result result = await getMembers();

    // assert
    expect(result.data, members);
  });
}

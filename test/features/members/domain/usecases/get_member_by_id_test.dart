import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_member_by_id.dart';
import 'package:getxandhasura/shared/result.dart';
import 'package:mockito/mockito.dart';
import '../../../../helpers/fixtures/mocks.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MemberRepository repository;
  late GetMemberById getMemberById;
  final String id = "id";

  setUp(() {
    repository = MockMemberRepository();
    getMemberById = GetMemberById(repository);
  });

  test("should get member by id", () async {
    // arrange
    Member member = getMockMember();
    when(repository.getMemberById(id)).thenAnswer((_) async => Result.success(member));

    // action
    Result result = await getMemberById(id);

    // assert
    expect(result.data, member);
  });
}

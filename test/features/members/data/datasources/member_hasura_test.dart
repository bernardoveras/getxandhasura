import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/fixtures/fixture_reader.dart';
import '../../../../helpers/fixtures/mocks.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MemberHasura api;
  late MockHasuraConnect hasuraConnect;
  final String id = 'UUID_GENERATOR';

  setUp(() {
    hasuraConnect = MockHasuraConnect();
    api = MemberHasuraImpl(hasuraConnect);
  });

  group('get members list', () {
    test('should return list of members when success response', () async {
      when(hasuraConnect.query(any)).thenAnswer((_) async => fixture('members.json'));

      final result = await api.getMembers();

      expect(result, getMockMembers());
    });
  });

  group('get member by id', () {
    test('should return one member when success response', () async {
      when(hasuraConnect.query(any)).thenAnswer((_) async => fixture('member.json'));

      final result = await api.getMemberById(id);

      expect(result, getMockMember());
    });
  });
}

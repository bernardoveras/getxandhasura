import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/shared/errors/failure.dart';
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
      when(hasuraConnect.query(any)).thenAnswer((_) async => jsonDecode(fixture('members.json')));

      final result = await api.getMembers();

      expect(result, getMockMembers());
    });

    test('should return empty list of members when success response', () async {
      when(hasuraConnect.query(any)).thenAnswer((_) async => jsonDecode(fixture('members_without_result.json')));

      final result = await api.getMembers();

      expect(result, []);
    });
  });

  group('get member by id', () {
    test('should return one member when success response', () async {
      when(hasuraConnect.query(any)).thenAnswer((_) async => jsonDecode(fixture('member.json')));

      final result = await api.getMemberById(id);

      expect(result, getMockMember());
    });
  });

  test('should throw a MessageFailure when the return error', () async {
    when(hasuraConnect.query(any)).thenAnswer((_) async => jsonDecode((fixture('members_with_error.json'))));

    expect(api.getMembers(), throwsA(TypeMatcher<MessageFailure>()));
  });
}

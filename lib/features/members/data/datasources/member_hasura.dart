import 'dart:convert';

import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'package:getxandhasura/shared/data/exceptions/server_exception.dart';
import 'package:getxandhasura/shared/hasura_response.dart';
import 'package:getxandhasura/shared/queries.dart';
import 'package:hasura_connect/hasura_connect.dart';

abstract class MemberHasura {
  Future<List<Member>> getMembers();
  Future<Member> getMemberById(String id);
}

class MemberHasuraImpl implements MemberHasura {
  final HasuraConnect _hasuraConnect;

  MemberHasuraImpl(this._hasuraConnect);

  @override
  Future<List<Member>> getMembers() async {
    HasuraResponse response = HasuraResponse.table(jsonDecode(await _hasuraConnect.query(getMembersQuery)), 'member');

    if (response.data is List) {
      return response.data.map<Member>((map) => Member.fromMap(map)).toList();
    }

    throw ServerException(statusCode: 200);
  }

  @override
  Future<Member> getMemberById(String id) async {
    HasuraResponse response = HasuraResponse.table(jsonDecode(await _hasuraConnect.query(getMemberByIdQuery(id))), 'member');

    return Member.fromMap(response.data);
  }
}

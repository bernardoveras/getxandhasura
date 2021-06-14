import 'package:getxandhasura/features/members/domain/entities/member.dart';
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
    var response = await _hasuraConnect.query(getMembersQuery);

    return response.map((map) => Member.fromMap(map["data"]["member"])).toList();
  }

  @override
  Future<Member> getMemberById(String id) async {
    var response = await _hasuraConnect.query(getMemberByIdQuery(id));

    return response.map((map) => Member.fromMap(map["data"]["member"]));
  }
}

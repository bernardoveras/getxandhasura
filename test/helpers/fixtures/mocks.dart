import 'dart:convert';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'fixture_reader.dart';

List<Member> getMockMembers() {
  String json = fixture("members.json");
  return jsonDecode(json)["data"]["member"].map<Member>((map) => Member.fromMap(map)).toList();
}

Member getMockMember() => Member.fromMap(jsonDecode(fixture("member.json"))["data"]["member"][0]);

Map<String, dynamic> getMockMembersWithError(){ 
  String json = fixture("members_with_error.json");

  return jsonDecode(json);
}

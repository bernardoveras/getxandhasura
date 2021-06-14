import 'dart:convert';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'fixture_reader.dart';

List<Member> getMockMembers() {
  String json = fixture("members.json");
  return jsonDecode(json)["data"]["member"].map<Member>((map) => Member.fromMap(map)).toList();
}

Member getMockMember() => Member.fromMap(jsonDecode(fixture("member.json"))["data"]["member"][0]);

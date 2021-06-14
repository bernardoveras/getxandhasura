import 'dart:convert';
import 'package:getxandhasura/features/members/domain/entities/member.dart';
import 'fixture_reader.dart';

List<Member> getMockMembers() {
  String json = fixture("members.json");
  return jsonDecode(json).map<Member>((map) => Member.fromMap(map)).toList();
}

Member getMockMember() => Member.fromJson(fixture("member.json"));

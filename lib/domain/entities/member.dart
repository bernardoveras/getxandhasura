import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:getxandhasura/domain/enums/gender.dart';

class Member extends Equatable {
  Member({
    required this.id,
    required this.name,
    required this.gender,
    required this.birth,
    this.address,
    this.cellphone,
    this.email,
    this.inactive = false,
  });

  final String id;
  final String name;
  final String? address;
  final DateTime birth;
  final String? cellphone;
  final String? email;
  final Gender gender;
  final bool inactive;

  Member copyWith({
    String? id,
    String? name,
    String? address,
    DateTime? birth,
    String? cellphone,
    String? email,
    Gender? gender,
    bool? inactive,
  }) =>
      Member(
        id: id ?? this.id,
        name: name ?? this.name,
        birth: birth ?? this.birth,
        address: address ?? this.address,
        gender: gender ?? this.gender,
        cellphone: cellphone ?? this.cellphone,
        email: email ?? this.email,
        inactive: inactive ?? this.inactive,
      );

  factory Member.fromJson(String str) => Member.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Member.fromMap(Map<String, dynamic> json) => Member(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        cellphone: json["cellphone"],
        gender: (json["gender"] as String).toGenderEnum(),
        inactive: json["inactive"],
        birth: DateTime.parse(json["birth"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "address": address,
        "cellphone": cellphone,
        "email": email,
        "inactive": inactive,
        "gender": gender.toDescription(),
        "birth": birth.toTimeStamp(),
      };

  @override
  List<Object?> get props => [id, name, email, address, cellphone, gender, inactive, birth];
}

extension DateTimeExtension on DateTime {
  String toTimeStamp() => "${this.year.toString().padLeft(4, '0')}-${this.month.toString().padLeft(2, '0')}-${this.day.toString().padLeft(2, '0')}";
}

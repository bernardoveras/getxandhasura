import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_member_by_id.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_members.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([MemberRepository, MemberHasura, GetMembers, GetMemberById])

main(){}
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:getxandhasura/features/members/data/datasources/member_hasura.dart';
import 'package:getxandhasura/features/members/domain/repositories/member_repository.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_member_by_id.dart';
import 'package:getxandhasura/features/members/domain/usecases/members/get_members.dart';
import 'package:getxandhasura/shared/plugins/network_manager.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([NetworkManager, Connectivity])
@GenerateMocks([MemberRepository, MemberHasura, GetMembers, GetMemberById, HasuraConnect ])

main(){}
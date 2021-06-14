String get getMembersQuery => ''' 
              query GetMembers {
              member {
                id
                name
                email
                cellphone
                address
                birth
                gender
                inactive
              }
            }''';

String getMemberByIdQuery(String id) => '''
query GetMemberById {
  member(where: {id: {_eq: "$id"}}) {
    id
    name
    email
    cellphone
    address
    birth
    gender
    inactive
  }
}
''';

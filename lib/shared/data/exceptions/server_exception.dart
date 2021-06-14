import 'package:http/http.dart';

class ServerException implements Exception {
  final String? msg;
  final int statusCode;

  ServerException({required this.statusCode, this.msg});

  ServerException.fromResponse(Response response)
      : this.statusCode = response.statusCode,
        this.msg = response.body;
}

class ApiMessageException implements Exception {
  final String msg;
  final int statusCode;

  ApiMessageException({required this.statusCode, required this.msg});
}

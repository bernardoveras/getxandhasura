import 'package:http/http.dart';

class ServerException implements Exception {
  final String? message;
  final int statusCode;

  ServerException({required this.statusCode, this.message});

  ServerException.fromResponse(Response response)
      : this.statusCode = response.statusCode,
        this.message = response.body;
}

class ApiMessageException implements Exception {
  final String message;
  final int statusCode;

  ApiMessageException({required this.statusCode, required this.message});
}

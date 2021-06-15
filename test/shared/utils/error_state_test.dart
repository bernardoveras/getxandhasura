import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:getxandhasura/shared/data/exceptions/server_exception.dart';
import 'package:getxandhasura/shared/errors/error_state.dart';
import 'package:getxandhasura/shared/errors/failure.dart';

class TestFailure extends Failure {}

main() {
  test('should return correct messages - General', () {
    expect(ErrorState.noInternet().message, "Internet unavailable, check your connection.");

    expect(ErrorState.create(null).message, "Oops, generic error.");

    expect(ErrorState.create("error").message, "error");

    expect(ErrorState.create(123).message, "Oops, generic error.");
  });

  test('should return correct messages for Exceptions', () {
    expect(ErrorState.create(ApiMessageException(statusCode: 200, message: "Error")).message, "Error");

    expect(ErrorState.create(TimeoutException("")).message, "Internet unavailable, check your connection.");

    expect(ErrorState.create(SocketException("")).message, "Internet unavailable, check your connection.");
  });

  test('should return correct messages for Failures', () {
    expect(ErrorState.create(ApiFailure()).message, "Oops, server unavailable.");

    expect(ErrorState.create(MessageFailure("Error")).message, "Error");

    expect(ErrorState.create(TestFailure()).message, "Oops, generic error.");
  });

  test('equals test', () {
    var error1 = ErrorState.noInternet();
    var error2 = ErrorState.noInternet();

    expect(error1, error2);
  });
}

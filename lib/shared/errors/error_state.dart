import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:getxandhasura/shared/data/exceptions/server_exception.dart';

import 'failure.dart';

class ErrorState extends Equatable {
  late final String message;

  @override
  List<Object> get props => [message];

  ErrorState.noInternet() {
    this.message = 'Internet unavailable, check your connection.';
  }

  ErrorState.create(dynamic error) {
    _logError(error);

    if (error == null) {
      this.message = 'Oops, generic error.';
    } else if (error is String) {
      this.message = error.toString();
    } else if (error is ApiMessageException) {
      this.message = error.message;
    } else if (error is ApiFailure) {
      this.message = "Oops, server unavailable.";
    } else if (error is MessageFailure) {
      this.message = error.message;
    } else if (error is Failure) {
      this.message = "Oops, generic error.";
    } else if (error is TimeoutException) {
      this.message = "Internet unavailable, check your connection.";
    } else if (error is SocketException) {
      this.message = "Internet unavailable, check your connection.";
    } else {
      this.message = 'Oops, generic error.';
    }
  }

  void _logError(error) {
    if (kDebugMode && error != null) {
      print("--- ErrorState.create ---");
      print(error);
      print("------------");
    }
  }
}

abstract class Failure implements Exception {
  @override
  String toString() => '$runtimeType Exception';
}

class GenericFailure extends Failure {}

class TimeoutFailure extends Failure {}

class ApiFailure extends Failure {}

class MessageFailure extends Failure {
  MessageFailure(this.message) : assert(message.isNotEmpty, 'Use another Failure for a failure without a message');

  final String message;
}

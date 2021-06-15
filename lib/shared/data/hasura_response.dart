import 'package:getxandhasura/shared/errors/failure.dart';

/// The response structure must contain an array called "data".
/// Inside it can contain values ​​with names of existing tables
/// in the database which can be an array or an object.
/// ```json
/// {
///   "data": [
///     "member": {...}
///   ]
/// }
/// ```

typedef _Errors = List<String>;

class HasuraResponse {
  final dynamic _data;

  dynamic get data => _data;

  HasuraResponse(this._data);

  factory HasuraResponse.table(dynamic data, String table) {
    _Errors errors = handleError(data);

    if (errors.length > 0) {
      throw MessageFailure(errors[0]);
    }

    var result = data["data"][table];

    if (result is List && result.length == 1) result = result[0];

    return HasuraResponse(result);
  }

  static _Errors handleError(dynamic data) {
    var errors = data["errors"];

    if (errors is List && errors.length > 0) return errors.map<String>((e) => e['message']).toList();

    return [];
  }
}

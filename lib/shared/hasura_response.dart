class HasuraResponse {
  final dynamic _data;

  dynamic get data => _data;

  HasuraResponse(this._data);

  factory HasuraResponse.table(dynamic data, String table) {
    var result = data["data"][table];

    if (result is List && result.length == 1) result = result[0];

    return HasuraResponse(result);
  }
}

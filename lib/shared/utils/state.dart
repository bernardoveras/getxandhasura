// ignore: must_be_immutable
import 'package:get/get.dart';
import 'package:getxandhasura/shared/errors/error_state.dart';

class ViewState<T> {
  T? _value;
  RxBool _loading = true.obs;
  Rxn<ErrorState> _error = Rxn<ErrorState>();

  ViewState();
  ViewState.loading(this._loading);
  ViewState.value(this._value);
  ViewState.error(this._error);

  T? get value => _value;

  bool get loading => _loading.value;

  ErrorState? get error => _error.value;

  set value(T? value) {
    this._value = value;
    this._loading.value = false;
    this._error.value = null;
  }

  set loading(bool b) {
    this._loading.value = b;
    this._error.value = null;
    this._value = null;
  }

  set error(ErrorState? error) {
    this._error.value = error;
    this._loading.value = false;
    this._value = null;
  }
}


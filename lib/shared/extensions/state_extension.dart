import 'package:getxandhasura/shared/errors/error_state.dart';
import 'package:getxandhasura/shared/plugins/network_manager.dart';
import 'package:getxandhasura/shared/utils/state.dart';
import '../result.dart';

typedef Task<T> = Future<T> Function();

extension ViewStateExtension on ViewState {
  /// Useful method to call some task and set the result in the ViewState automatically.
  Future<void> update<T>(
    Task<Result<T>> task, {
    bool offline = false,
  }) async {
    try {
      if (!offline && await isOffline()) {
        this.error = ErrorState.noInternet();
        return;
      }

      this.loading = true;

      Result<T> result = await task();

      if (result.isSuccess) {
        this.value = result.data;
      } else {
        this.error = ErrorState.create(result.error);
      }
    } catch (e) {
      this.error = ErrorState.create(e);
    }
  }
}
